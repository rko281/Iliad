"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILFormula
	instanceVariableNames: 'proxy conditions containers formulas buttons saveAction cancelAction errors multipart subFormula cssClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFormula guid: (GUID fromString: '{a314d253-b65c-463b-9790-44808693b5f4}')!
ILFormula comment: ''!
!ILFormula categoriesForClass!Iliad-More-Formula! !
!ILFormula methodsFor!

addCondition: aCondition	self conditions add: aCondition!

addCondition: aCondition labelled: aBlock	self addCondition: (aCondition asFormulaCondition 		labelBlock: aBlock;		yourself)!

addCssClass: aString	self cssClass: self cssClass, ' ', aString!

addField: aField	| container |	container := self containers isEmpty 		ifTrue: [self newContainer]		ifFalse: [self containers last].	^container addField: aField!

addField: aField label: aString	| container |	container := self newContainerLabelled: aString.	^ container addField: aField!

addFormula: aFormula	aFormula beSubFormula.	^self formulas add: aFormula!

autoCompleteInputOn: aSelector	^self addField: (ILAutocompleteInputField on: self selector: aSelector)!

beMultipart	multipart := true!

beSubFormula	subFormula := true!

buttons	^buttons ifNil: [self defaultButtons]!

buttons: aCollection	buttons := aCollection !

buttonsContents	^[:e |		self buttons do: [:each |			e button				text: each key;				action: [self perform: each value]]] !

cancel	self cancelAction valueWithPossibleArgument: self model!

cancelAction	^cancelAction ifNil: [self defaultCancelAction]!

cancelAction: aBlock	cancelAction := aBlock!

checkboxOn: aSelector	^self addField: (ILCheckboxField on: self selector: aSelector)!

checkboxOn: aSelector label: aString	^ self 		addField: ((ILCheckboxField on: self selector: aSelector)						labelContents: [ : e | e text: '' ];						yourself)				label: aString!

collect: aBlock	| copy |	copy := self copy.	copy containers do: [:each |		each setFields: (each fields collect: aBlock)].	copy formulas: (copy formulas collect: [:each | each collect: aBlock]).	^copy!

commit	self formulas do: [:each | each commit].	proxy commit!

conditions	^conditions ifNil: [conditions := OrderedCollection new]!

containers 	^containers ifNil: [containers := OrderedCollection new]!

containersContents	^[:e |		self containers do: [:each | 			e build: each].		self formulas do: [:each |			e build: each]]!

contents	^self isSubFormula			ifFalse: [self mainFormulaContents]			ifTrue: [self subFormulaContents]!

cssClass	^cssClass ifNil: ['formula']!

cssClass: aString	cssClass := aString!

dateInputOn: aSelector	^self addField: (ILDateInputField on: self selector: aSelector)!

dateInputOn: aSelector label: aString	^ self 		addField: ((ILDateInputField on: self selector: aSelector)						labelContents: [ : e | e text: '' ];						yourself)				label: aString!

defaultButtons	^{'Save' -> #save. 'Cancel' -> #cancel}!

defaultCancelAction	^[:model | self answer: nil]!

defaultSaveAction	^[:model | self commit. self answer: self model]!

do: aBlock	self fields do: aBlock.	self formulas do: aBlock!

errors	^errors ifNil: [errors := OrderedCollection new]!

errorsContents	^[:e |		self errors notEmpty ifTrue: [			e ul				class: 'errors';				build: [:ul |					self errors do: [:each |						ul li text: each]]]]!

fields	| fields |	fields := OrderedCollection new.	self containers do: [:each | fields addAll: each fields].	self formulas do: [:each | fields addAll: each fields].	^fields!

fileInputOn: aSelector	^self addField: (ILFileInputField on: self selector: aSelector)!

fileInputOn: aSelector label: aString	^ self 		addField: ((ILFileInputField on: self selector: aSelector) 						labelContents: [ : e | e text: '' ];						yourself)		label: aString!

formulas	^formulas ifNil: [formulas := OrderedCollection new]!

formulas: aCollection	formulas := aCollection!

inputOn: aSelector	^self addField: (ILInputField on: self selector: aSelector)!

inputOn: aSelector label: aString	^ self 		addField: ((ILInputField on: self selector: aSelector)						labelContents: [ : e | e text: '' ];						yourself)				label: aString!

isEmpty	^self fields isEmpty!

isMultipart 	^self multipart or: [		((self fields addAll: self formulas; yourself) select: [:each | 			each isMultipart]) notEmpty]!

isSubFormula 	^self subFormula!

isValid	self fields do: [:each |		each isValid ifFalse: [^false]].	self formulas do: [:each |		each isValid ifFalse: [^false]].	^self errors isEmpty!

mainFormulaContents	^[:e | 		e div 			class: self cssClass;			build: self errorsContents;			build: [:div |				div form build: [:form |					form multipart: self isMultipart.					form build: self containersContents.					form div 						class: 'buttons';						build: self buttonsContents]]]!

model	^proxy model!

multipart	^multipart ifNil: [false]!

multipleCheckBoxOn: aSelector	^self addField: (ILMultipleCheckboxField on: self selector: aSelector)!

multipleCheckBoxOn: aSelector label: aString	^ self 		addField: ((ILMultipleCheckboxField on: self selector: aSelector)						labelContents: [ : e | e text: '' ];						yourself)						label: aString!

newContainer	^self newContainerLabelled: ''!

newContainerLabelled: aString	^self containers add: (ILFieldContainer on: self label: aString)!

numberInputOn: aSelector	^self addField: (ILNumberInputField on: self selector: aSelector)!

numberInputOn: aSelector label: aString	^ self 		addField: ((ILNumberInputField on: self selector: aSelector)						labelContents: [ : e | e text: '' ];						yourself)		label: aString!

passwordOn: aSelector	^self addField: (ILPasswordField on: self selector: aSelector)!

passwordOn: aSelector label: aString	^ self 		addField: ((ILPasswordField on: self selector: aSelector)						labelContents: [ : e | e text: '' ];						yourself)						label: aString!

postCopy	super postCopy.	containers := self containers collect: [:each |		each copy postCopyTo: self; yourself]	!

proxy	^proxy!

radioButtonOn: aSelector label: aString	^ self 		addField: ((ILRadioButtonField on: self selector: aSelector)						labelContents: [ : e | e text: '' ];						yourself)				label: aString!

radioButtonOn: aSelector label: aString groupName: groupName	^ self 		addField: ((ILRadioButtonField on: self selector: aSelector)						labelContents: [ : e | e text: '' ];						groupName: groupName						yourself)				label: aString!

reject: aBlock	| copy |	copy := self copy.	copy containers do: [:each |		each setFields: (each fields reject: aBlock)].	copy formulas: (copy formulas collect: [:each | each reject: aBlock]).	^copy!

repeatedPasswordOn: aSelector	^self addField: (ILRepeatedPasswordField on: self selector: aSelector)!

repeatedPasswordOn: aSelector label: aString repeatLabel: repeatString	^ self 		addField: ((ILRepeatedPasswordField on: self selector: aSelector)						labelContents: [ : e | e text: aString ];						repeatLabelContents: [ : e | e text: repeatString ];						yourself)						label: ''!

save	self		validate;		markDirty.	self isValid ifTrue: [		self saveAction valueWithPossibleArgument: self model]!

saveAction	^saveAction ifNil: [self defaultSaveAction]!

saveAction: aBlock		saveAction := aBlock!

scripts	^{'/javascripts/jquery.autocomplete.js'}!

select: aBlock	| copy |	copy := self copy.	copy containers do: [:each |		each setFields: (each fields select: aBlock)].	copy formulas: (copy formulas collect: [:each | each select: aBlock]).	^copy!

selectOn: aSelector	^self addField: (ILSelectField on: self selector: aSelector)!

selectOn: aSelector label: aString	^ self 		addField: ((ILSelectField on: self selector: aSelector)						labelContents: [ : e | e text: '' ];						yourself)						label: aString!

setModel: anObject	proxy := ILModelProxy on: anObject!

styles	^{'/stylesheets/jquery.autocomplete.css'}	!

subFormula	^subFormula ifNil: [false]!

subFormulaContents	^self containersContents!

textareaOn: aSelector	^self addField: (ILTextareaField on: self selector: aSelector)!

textareaOn: aSelector label: aString	^ self 		addField: ((ILTextareaField on: self selector: aSelector)						labelContents: [ : e | e text: '' ];						yourself)						label: aString!

validate	errors := OrderedCollection new.	self fields do: [:each | each validate].	self formulas do: [:each | each validate].	self isValid ifTrue: [		self conditions do: [:each |			(each validate: self proxy) ifFalse: [				self errors add: (each labelFor: self proxy)]]]! !
!ILFormula categoriesFor: #addCondition:!accessing!public! !
!ILFormula categoriesFor: #addCondition:labelled:!accessing!public! !
!ILFormula categoriesFor: #addCssClass:!accessing!public! !
!ILFormula categoriesFor: #addField:!adding!public! !
!ILFormula categoriesFor: #addField:label:!adding!public! !
!ILFormula categoriesFor: #addFormula:!adding!public! !
!ILFormula categoriesFor: #autoCompleteInputOn:!adding!public! !
!ILFormula categoriesFor: #beMultipart!accessing!public! !
!ILFormula categoriesFor: #beSubFormula!accessing!public! !
!ILFormula categoriesFor: #buttons!accessing!public! !
!ILFormula categoriesFor: #buttons:!accessing!public! !
!ILFormula categoriesFor: #buttonsContents!building!public! !
!ILFormula categoriesFor: #cancel!actions!public! !
!ILFormula categoriesFor: #cancelAction!accessing!public! !
!ILFormula categoriesFor: #cancelAction:!accessing!public! !
!ILFormula categoriesFor: #checkboxOn:!adding!public! !
!ILFormula categoriesFor: #checkboxOn:label:!adding!public! !
!ILFormula categoriesFor: #collect:!enumerating!public! !
!ILFormula categoriesFor: #commit!actions!public! !
!ILFormula categoriesFor: #conditions!accessing!public! !
!ILFormula categoriesFor: #containers!accessing!public! !
!ILFormula categoriesFor: #containersContents!building!public! !
!ILFormula categoriesFor: #contents!building!public! !
!ILFormula categoriesFor: #cssClass!accessing!public! !
!ILFormula categoriesFor: #cssClass:!accessing!public! !
!ILFormula categoriesFor: #dateInputOn:!adding!public! !
!ILFormula categoriesFor: #dateInputOn:label:!adding!public! !
!ILFormula categoriesFor: #defaultButtons!defaults!public! !
!ILFormula categoriesFor: #defaultCancelAction!defaults!public! !
!ILFormula categoriesFor: #defaultSaveAction!defaults!public! !
!ILFormula categoriesFor: #do:!enumerating!public! !
!ILFormula categoriesFor: #errors!accessing!public! !
!ILFormula categoriesFor: #errorsContents!building!public! !
!ILFormula categoriesFor: #fields!accessing!public! !
!ILFormula categoriesFor: #fileInputOn:!adding!public! !
!ILFormula categoriesFor: #fileInputOn:label:!adding!public! !
!ILFormula categoriesFor: #formulas!accessing!public! !
!ILFormula categoriesFor: #formulas:!accessing!public! !
!ILFormula categoriesFor: #inputOn:!adding!public! !
!ILFormula categoriesFor: #inputOn:label:!adding!public! !
!ILFormula categoriesFor: #isEmpty!public!testing! !
!ILFormula categoriesFor: #isMultipart!public!testing! !
!ILFormula categoriesFor: #isSubFormula!public!testing! !
!ILFormula categoriesFor: #isValid!public!testing! !
!ILFormula categoriesFor: #mainFormulaContents!building!public! !
!ILFormula categoriesFor: #model!accessing!public! !
!ILFormula categoriesFor: #multipart!accessing!public! !
!ILFormula categoriesFor: #multipleCheckBoxOn:!adding!public! !
!ILFormula categoriesFor: #multipleCheckBoxOn:label:!adding!public! !
!ILFormula categoriesFor: #newContainer!accessing!public! !
!ILFormula categoriesFor: #newContainerLabelled:!accessing!public! !
!ILFormula categoriesFor: #numberInputOn:!adding!public! !
!ILFormula categoriesFor: #numberInputOn:label:!adding!public! !
!ILFormula categoriesFor: #passwordOn:!adding!public! !
!ILFormula categoriesFor: #passwordOn:label:!adding!public! !
!ILFormula categoriesFor: #postCopy!copying!public! !
!ILFormula categoriesFor: #proxy!accessing!public! !
!ILFormula categoriesFor: #radioButtonOn:label:!adding!public! !
!ILFormula categoriesFor: #radioButtonOn:label:groupName:!adding!public! !
!ILFormula categoriesFor: #reject:!enumerating!public! !
!ILFormula categoriesFor: #repeatedPasswordOn:!adding!public! !
!ILFormula categoriesFor: #repeatedPasswordOn:label:repeatLabel:!adding!public! !
!ILFormula categoriesFor: #save!actions!public! !
!ILFormula categoriesFor: #saveAction!accessing!public! !
!ILFormula categoriesFor: #saveAction:!accessing!public! !
!ILFormula categoriesFor: #scripts!building!public! !
!ILFormula categoriesFor: #select:!enumerating!public! !
!ILFormula categoriesFor: #selectOn:!adding!public! !
!ILFormula categoriesFor: #selectOn:label:!adding!public! !
!ILFormula categoriesFor: #setModel:!private! !
!ILFormula categoriesFor: #styles!building!public! !
!ILFormula categoriesFor: #subFormula!accessing!public! !
!ILFormula categoriesFor: #subFormulaContents!building!public! !
!ILFormula categoriesFor: #textareaOn:!adding!public! !
!ILFormula categoriesFor: #textareaOn:label:!adding!public! !
!ILFormula categoriesFor: #validate!actions!public! !

!ILFormula class methodsFor!

on: anObject	^self new		setModel: anObject;		yourself! !
!ILFormula class categoriesFor: #on:!instance creation!public! !

