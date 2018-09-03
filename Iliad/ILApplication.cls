"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILApplication
	instanceVariableNames: 'model page'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'selectorFilter'!
ILApplication guid: (GUID fromString: '{0766f3d1-d5fa-46a0-bb01-4f4fc673ff00}')!
ILApplication comment: 'I am the implementation of an application.I am is the root object of a buildable object tree. Applications have a set of controllers, methods used to dispatch requests to the corresponding sub-tree of buildable objects (oftenly a composition of stateful widgets).In concrete subclasses, the class method #path should return the base path (string) for the application.""""""""""""""""""""""""""" Applications & UI sate"""""""""""""""""""""""""""You don''t have to bother about instantiating applications, the framework will handle session and application instances. Application instances are storedin sessions. Each session stores one instance of the same application class.Root widgets should be stored in applications to keep their state across requests.""""""""""""""""""""""" Controller methods """""""""""""""""""""""Like widgets, I am stateful.Unlike widgets I know how to dispatch a request with #dispatch : the controller method corresponding to the url will be called.Controller methods must: - answer a buildable object (a block closure or an instance of ILWidget for example) - be in the ''controllers'' method protocol (with the default selector filter)The default controller method is #index. """"""""""""""""""" selectorFilter """""""""""""""""""The class inst var <selectorFilter> is used to filter controller methods. By default it allows all methods in the ''controllers'' protocol.Alternatively, you can override the class method #defaultSelectorFilter to supply your own selectorFilteror plug it in using the class method #selectorFilter:'!
!ILApplication categoriesForClass!Iliad-Core-Buildables! !
!ILApplication methodsFor!

allowedSelector: aSelector	"Answer true if <aSelector> is ok to call from a URL.	Default implementation is to use the pluggable filter block."		^self selectorFilter copy value: aSelector!

contents	"Call #dispatch. A buildable is expected from #dispatch"	^ self dispatch!

convertSelector: aString	^ ('' join: (((aString substrings: '-') collect: [ :each |		each capitalized ] ))) uncapitalized asSymbol!

defaultPageClass	^ILHTMLPage!

dispatch	"Dispatch to correct controller method.	If dispatchOverride returns something	different from nil, consider it handled."	^self dispatchOverride ifNil: [		self dispatchOn: (self router route peek)]!

dispatchOn: aMethod	"Dispatch to correct method:	- If <aMethod> is empty we call #index	- If the selector is allowed to be executed then we just call it"	| m |	m := (aMethod isNil or: [ aMethod isEmpty ])		ifTrue: [ #index ]		ifFalse: [ self convertSelector: aMethod ].	(self allowedSelector: m)		ifTrue: [ ^ self perform: m ]		ifFalse: [ ILDispatchError signal ]!

dispatchOverride	"Handle special urls or requests. Subclass implementors	should call super first and see if it was handled."		^nil!

index	"default controller method"		^[:e | ]!

model	^model!

model: anObject	model := anObject!

newRootElement 	^self rootElementClass new!

page	^page!

request	^self context request!

respondOn: aResponse	page := self defaultPageClass new.	page body build: self.	self updatePage: page.	self context builtWidgets do: [:each | each buildHead: page head].	page respondOn: aResponse!

returnResponse: aResponse	"Abort all other request handling"	| response |		ILResponseNotification new		response: aResponse;		signal!

rootElementClass 	^ILHTMLBuilderElement!

selectorFilter	^self class selectorFilter !

updateBaseUrl: anUrl	"Update the base url used for the current context"	!

updateFromRoute: aRoute	"Override this method to update to state of the application	from the request url route.		This method will be called for each new request"		!

updatePage: aPage	"override to add elements to aPage.	super should be called to include default scripts"	"aPage head javascript src: '/javascripts/jquery-1.4.4.min.js'."
	"aPage head javascript src: '/javascripts/jquery-1.12.4.min.js'."	aPage head javascript		src: '/javascripts/jquery-3.3.1.min.js'.	aPage head javascript src: '/javascripts/no_conflict.js'.	aPage head javascript src: '/javascripts/iliad.js'!

widgetFor: aBuildable	"Convenience methode. This is useful for building anonymous widgets.	ex: myWidget := self widgetFor: [:e | e h1: 'Hello World !!']"		^ILPluggableWidget new		contentsBlock: aBuildable;		yourself! !
!ILApplication categoriesFor: #allowedSelector:!dispatching!public! !
!ILApplication categoriesFor: #contents!building!public! !
!ILApplication categoriesFor: #convertSelector:!converting!public! !
!ILApplication categoriesFor: #defaultPageClass!defaults!public! !
!ILApplication categoriesFor: #dispatch!dispatching!public! !
!ILApplication categoriesFor: #dispatchOn:!dispatching!public! !
!ILApplication categoriesFor: #dispatchOverride!dispatching!public! !
!ILApplication categoriesFor: #index!controllers!public! !
!ILApplication categoriesFor: #model!accessing!public! !
!ILApplication categoriesFor: #model:!accessing!public! !
!ILApplication categoriesFor: #newRootElement!private! !
!ILApplication categoriesFor: #page!accessing!public! !
!ILApplication categoriesFor: #request!accessing!public! !
!ILApplication categoriesFor: #respondOn:!converting!public! !
!ILApplication categoriesFor: #returnResponse:!converting!public! !
!ILApplication categoriesFor: #rootElementClass!defaults!public! !
!ILApplication categoriesFor: #selectorFilter!accessing!public! !
!ILApplication categoriesFor: #updateBaseUrl:!public!updating! !
!ILApplication categoriesFor: #updateFromRoute:!public!updating! !
!ILApplication categoriesFor: #updatePage:!public!updating! !
!ILApplication categoriesFor: #widgetFor:!accessing!public! !

!ILApplication class methodsFor!

absolutePath	^String streamContents: [:stream |		(self path isNil or: [ self path beginsWith: '/']) ifFalse: [stream nextPut: $/].		self path ifNotNil: [stream nextPutAll: self path]]!

categoryOfElement: aSelector inClassOrSuperclass: aClass	"Find the first category of <aSelector> up the superclass chain."	^aClass ifNotNil: [ | selectorCategory |		^ ((selectorCategory := ILPlatform current categoryOfSelector: aSelector inClass: aClass) = Protocol unclassified			or: [ selectorCategory isNil ])				ifTrue: [					self 						categoryOfElement: aSelector 						inClassOrSuperclass: aClass superclass ]				ifFalse: [ selectorCategory ] ]!

defaultSelectorFilter	"Override this method to supply your own selectorFilter	or plug it in using #selectorFilter:"	^[:selector |		(self canUnderstand: selector) and: [			(self 				categoryOfElement: selector 				inClassOrSuperclass: self) = #controllers]]!

isRootApplication	^self path notNil and: [self absolutePath = '/']!

path	"Base path of the application.	Override this method in concrete subclasses It should answer a string or nil"		^nil!

selectorFilter	^selectorFilter ifNil: [self defaultSelectorFilter]!

selectorFilter: aBlock	selectorFilter := aBlock! !
!ILApplication class categoriesFor: #absolutePath!accessing!public! !
!ILApplication class categoriesFor: #categoryOfElement:inClassOrSuperclass:!private! !
!ILApplication class categoriesFor: #defaultSelectorFilter!defaults!public! !
!ILApplication class categoriesFor: #isRootApplication!public!testing! !
!ILApplication class categoriesFor: #path!accessing!public! !
!ILApplication class categoriesFor: #selectorFilter!accessing!public! !
!ILApplication class categoriesFor: #selectorFilter:!accessing!public! !

