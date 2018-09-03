"Filed out from Dolphin Smalltalk 7"!

ILBuildable subclass: #ILWidget
	instanceVariableNames: 'id state decorator owner dependentWidgets'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILWidget guid: (GUID fromString: '{7e853109-9bcd-4c4b-8f27-14bc03520490}')!
ILWidget comment: 'I am a stateful graphical component. """""""""""""""""""""""""""""" Building HTML with widgets""""""""""""""""""""""""""""""To build HTML override the #contents method, which should always return a view block, ie, a block which takes an element as parameter.Example: contents     ^[:e || div |        div := e div class: ''foo''.        div h1: ''Bar''.        div a            text: ''do something'';            action: [self doSomething]]See ILElement hierarchy (Especially ILHTMLBuilderElement) for more information about building HTML with elements.#contents method should *never* be called from the outside. Use #build instead. For instance, to build a sub-widget in a view block, you should write something like:contents    ^[:e | e build: mySubWidget]""""""""""""""""" Control flow """""""""""""""""I can show (display instead of me) other widgets with #show* methods or answer to widgets that called me with #answer. When using the javascript layer, call #markDirty whenever my state change, so I will be updated on AJAX requests.Widgets which states depend on me can be automatically rebuilt whenever I am marked as dirty (see #addDependentWidget:).""""""""""""""" Decorators """""""""""""""I can also have decorators that may modify my behavior. A decorator can be added to the decoration chain with #decorateWith.'!
!ILWidget categoriesForClass!Iliad-Core-Buildables! !
!ILWidget methodsFor!

addDependentWidget: aWidget	"Add <aWidget> to my dependent widgets.	Each dependent widget will be rebuilt on AJAX requests whenever	I am rebuilt"	(dependentWidgets includes: aWidget) ifFalse: [		dependentWidgets add: aWidget]!

answer	"Give the control back to the owner, i.e, the widget which showed the receiver.	Answer self"		^self answer: self!

answer: anAnswer	"Give the control back to the owner, i.e, the widget which showed the receiver.	Answer <anAnswer>"		decorator handleAnswer: anAnswer!

append: aWidget	"Insert <aWidget> after the receiver"		self append: aWidget onAnswer: [:ans |]!

append: aWidget onAnswer: aBlock	"Insert <aWidget> after the receiver"		self		show: aWidget		onAnswer: aBlock		delegator: (ILAppendDelegator new widget: aWidget)!

beDirty	state := self session nextId!

buildContents	"Do *not* override this method. Use #contents instead"		self registerState.	self context addBuiltWidget: self.		^self newRootElement		class: self id;		build: self fullContents;		yourself!

buildHead: aHead	decorator updateHead: aHead!

confirm: aString ifTrue: aBlock	self		confirm: aString		ifTrue: aBlock		ifFalse: []!

confirm: aString ifTrue: aBlock ifFalse: anotherBlock	self		show: (ILConfirmationWidget new			confirmationString: aString;			yourself)		onAnswer: [:boolean |			boolean ifTrue: aBlock ifFalse: anotherBlock]!

contents	"Override this method to add contents to your widgets"		^[:e | ]!

decorateWith: aDecorator	| dec1 dec2 |	dec1 := nil.	dec2 := decorator.	[dec2 = self or: [aDecorator isGlobal]] whileFalse: [		dec1 := dec2.		dec2 := dec2 decoratee].	aDecorator decoratee: dec2.	dec1 isNil		ifTrue: [decorator := aDecorator]		ifFalse: [dec1 decoratee: aDecorator]!

decorateWith: aDecorator during: aBlock	self decorateWith: aDecorator.	aBlock value.	aDecorator removeYourself!

decoratorsDo: aBlock	| dec |	dec := decorator.	[dec ~~ self] whileTrue: [		aBlock value: dec.		dec := dec decoratee].!

dependantWidget	^dependentWidgets copy!

fullContents 	"Do *not* override this method. Use #contents instead"		^decorator contents!

handleAnswer: anAnswer	^nil!

id	^id ifNil: [id := self session nextId]!

id: aString	id := aString!

inform: aString	self show: (ILInformationWidget new		informationString: aString;		yourself)!

initialize	super initialize.	decorator := ILDecorator decoratee: self.	dependentWidgets := OrderedCollection new!

markDirty	"Mark the receiver as 'dirty'	So the widget will be rebuilt on Ajax requests.	You do not need to mark subwidgets as dirty,	they will be rebuilt together with the receiver"		self owner		ifNil: [self beDirty]		ifNotNil: [self owner markDirty].	dependentWidgets do: [:each | each markDirty]		!

newRootElement	^self rootElementClass new!

owner	"Answer the widget which shows me, if any"	^owner!

owner: aWidget	owner := aWidget!

postCopy	super postCopy.	decorator := ILDecorator decoratee: self.	dependentWidgets := OrderedCollection new.	state := nil.	id := nil!

prepend: aWidget	"Insert <aWidget> before the receiver"		self prepend: aWidget onAnswer: [:ans | ]!

prepend: aWidget onAnswer: aBlock	"Insert <aWidget> before the receiver"		self 		show: aWidget		onAnswer: aBlock		delegator: (ILPrependDelegator new widget: aWidget)!

printJsonOn: aStream	self build printJsonOn: aStream!

registerState	self stateRegistry register: self!

removeDecorator: aDecorator	"Remove <aDecorator> from the decoration chain, 	except if <aDecorator> is the inital one"		decorator = aDecorator 		ifTrue: [			decorator decoratee = self ifFalse: [				decorator := aDecorator decoratee]]		ifFalse: [| dec1 dec2 |			dec1 := decorator.			[dec1 = aDecorator] whileFalse: [				dec2 := dec1.				dec1 := dec1 decoratee].			dec2 decoratee: dec1 decoratee]!

removeDependentWidget: aWidget	(dependentWidgets includes: aWidget) ifTrue: [		dependentWidgets remove: aWidget]!

retrieveControl	"Give the control back to the receiver, and make any showed widget answer nil"		self decoratorsDo: [:each |		each isDelegator ifTrue: [			each widget answer: nil]]!

rootElementClass	^ILDivElement!

scripts	"Answer a collection of strings.	Override in subclasses to add scripts to load with the widget"		^#()!

show: aWidget	"Show another widget instead of the receiver.	The receiver is also implicitely marked dirty"		self show: aWidget onAnswer: [:ans | ]!

show: aWidget onAnswer: aBlock	"Show another widget instead of the receiver, and catch the answer in <aBlock>,	 The receiver is also implicitely marked dirty"		self 		show: aWidget 		onAnswer: aBlock 		delegator: (ILDelegator new widget: aWidget)!

show: aWidget onAnswer: aBlock delegator: aDelegator	| answerHandler |	answerHandler := ILAnswerHandler new.	self 		decorateWith: aDelegator;		markDirty.	answerHandler action: (self session actionFor: [:value |			aDelegator removeYourself.			self markDirty.			aWidget owner: nil.			answerHandler removeYourself.			aBlock value: value]).	aWidget 		owner: self;		decorateWith: answerHandler!

state	^state copy!

stateRegistry	^self context stateRegistry!

styles	"Answer a collection of strings.	Override in subclasses to add styles to load with the widget"		^#()!

updateHead: aHead	self withDecoratorsDo: [:each |		each scripts do: [:script || e |			e := ILHTMLBuilderElement new javascript src: script.			(aHead children includes: e) ifFalse: [				aHead add: e]].		each styles do: [:script || e |			e := ILHTMLBuilderElement new stylesheet href: script.			(aHead children includes: e) ifFalse: [				aHead add: e]]]!

widget	^self!

widgetFor: aBuildable	"Convenience method. This is useful for building anonymous widgets.	ex: myWidget := self widgetFor: [:e | e h1: 'Hello world!!']"		^ILPluggableWidget new 		contentsBlock: aBuildable; 		yourself!

widgetFor: aBuildablewithInPlaceEditor: anotherBuildable	"Convenience method. This is useful for building anonymous widgets.	ex: myWidget := self widgetFor: [:e | e h1: 'Hello world!!']"	| widget |	widget := ILPluggableWidget new 		contentsBlock: aBuildable.		self onDoubleClickDo: [ 			widget show: (self widgetFor: 				anotherBuildable) ].		^ widget.!

withDecoratorsDo: aBlock	aBlock value: self.	self decoratorsDo: aBlock! !
!ILWidget categoriesFor: #addDependentWidget:!public!states! !
!ILWidget categoriesFor: #answer!control flow!public! !
!ILWidget categoriesFor: #answer:!control flow!public! !
!ILWidget categoriesFor: #append:!control flow!public! !
!ILWidget categoriesFor: #append:onAnswer:!control flow!public! !
!ILWidget categoriesFor: #beDirty!private! !
!ILWidget categoriesFor: #buildContents!building!public! !
!ILWidget categoriesFor: #buildHead:!building!public! !
!ILWidget categoriesFor: #confirm:ifTrue:!control flow!public! !
!ILWidget categoriesFor: #confirm:ifTrue:ifFalse:!control flow!public! !
!ILWidget categoriesFor: #contents!building!public! !
!ILWidget categoriesFor: #decorateWith:!decorators!public! !
!ILWidget categoriesFor: #decorateWith:during:!decorators!public! !
!ILWidget categoriesFor: #decoratorsDo:!decorators!public! !
!ILWidget categoriesFor: #dependantWidget!accessing!public! !
!ILWidget categoriesFor: #fullContents!building!public! !
!ILWidget categoriesFor: #handleAnswer:!control flow!public! !
!ILWidget categoriesFor: #id!accessing!public! !
!ILWidget categoriesFor: #id:!accessing!public! !
!ILWidget categoriesFor: #inform:!control flow!public! !
!ILWidget categoriesFor: #initialize!initialization!public! !
!ILWidget categoriesFor: #markDirty!public!states! !
!ILWidget categoriesFor: #newRootElement!private! !
!ILWidget categoriesFor: #owner!accessing!public! !
!ILWidget categoriesFor: #owner:!accessing!public! !
!ILWidget categoriesFor: #postCopy!copying!public! !
!ILWidget categoriesFor: #prepend:!control flow!public! !
!ILWidget categoriesFor: #prepend:onAnswer:!control flow!public! !
!ILWidget categoriesFor: #printJsonOn:!printing!public! !
!ILWidget categoriesFor: #registerState!public!states! !
!ILWidget categoriesFor: #removeDecorator:!decorators!public! !
!ILWidget categoriesFor: #removeDependentWidget:!public!states! !
!ILWidget categoriesFor: #retrieveControl!control flow!public! !
!ILWidget categoriesFor: #rootElementClass!defaults!public! !
!ILWidget categoriesFor: #scripts!building!public! !
!ILWidget categoriesFor: #show:!control flow!public! !
!ILWidget categoriesFor: #show:onAnswer:!control flow!public! !
!ILWidget categoriesFor: #show:onAnswer:delegator:!control flow!public! !
!ILWidget categoriesFor: #state!accessing!public! !
!ILWidget categoriesFor: #stateRegistry!accessing!public! !
!ILWidget categoriesFor: #styles!building!public! !
!ILWidget categoriesFor: #updateHead:!private! !
!ILWidget categoriesFor: #widget!accessing!public! !
!ILWidget categoriesFor: #widgetFor:!accessing!public! !
!ILWidget categoriesFor: #widgetFor:withInPlaceEditor:!accessing!public! !
!ILWidget categoriesFor: #withDecoratorsDo:!decorators!public! !

