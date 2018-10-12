"Filed out from Dolphin Smalltalk 7"!

ILBuildable subclass: #ILField
	instanceVariableNames: 'formula conditions errors customRows reader writer labelContents commentContents id'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILField guid: (GUID fromString: '{3f245e71-88ab-4a98-8cf2-267e5137c815}')!
ILField comment: ''!
!ILField categoriesForClass!Iliad-More-Formula! !
!ILField methodsFor!

addCondition: aCondition	self conditions add: aCondition!

addCondition: aCondition labelled: aBlock	self addCondition: (aCondition asFormulaCondition 		labelBlock: aBlock;		yourself)!

addRow: aBlock	self customRows add: aBlock!

build	^ILHTMLBuilderElement new		build: self tableRowContents;		yourself!

buildContents	^ILHTMLBuilderElement new		build: self tableRowContents;		yourself!

comment: aString	self commentContents: [:e | e text: aString]!

commentContents 	^commentContents		!

commentContents: aBlock	commentContents := aBlock!

conditions	^conditions ifNil: [conditions := OrderedCollection new]!

customRows	^customRows ifNil: [customRows := OrderedCollection new]!

customRowsContents	^[:tbody |		self customRows do: [:each |			tbody tr build: [:tr | 				tr td.				tr td class: 'custom'; build: each]]]!

errors	^errors ifNil: [{}]!

errorsContents	^[:tbody |		self errors notEmpty ifTrue: [			tbody tr build: [:tr |				tr td.				tr td div					class: 'errors';					build: [:div |						div text: self errors first]]]]!

fieldContents	self subclassResponsibility!

formula	^formula!

formula: aFormula	formula := aFormula!

id	^id ifNil: [id := ILId new asString]!

isMultipart 	^false!

isValid	^self errors isEmpty!

label: aString	self labelContents: [:e | e text: aString]!

labelContents	^labelContents!

labelContents: aBlock	labelContents := aBlock!

on: aFormula selector: aSelector	reader ifNil: [reader := aSelector].	writer ifNil: [writer := (aSelector, ':') asSymbol].	labelContents ifNil: [self label: aSelector greaseString].	self formula: aFormula!

postCopyTo: aContainer	formula := aContainer formula!

reader	^reader!

reader: aSymbol	reader := aSymbol!

tableRowContents	^[:tbody |		tbody tr build: [:tr |			tr 				cssClass: 'field';				id: self id.			self isValid ifFalse: [				tr cssClass: tr cssClass, ' error'].			tr th				build: self labelContents.			tr td				build: self fieldContents].		self commentContents ifNotNil:[			tbody tr build: [:tr | 				tr td.				tr td					cssClass: 'comment';					build: self commentContents]].		tbody 			build: self errorsContents;			build: self customRowsContents]!

validate	errors := OrderedCollection new.	self conditions do: [:each | 		(each validate: self value) ifFalse: [			self errors add: (each labelFor: self value)]]!

value	^formula proxy perform: self reader!

value: anObject	formula proxy		perform: self writer		with: anObject!

writer	^writer!

writer: aSymbol	writer := aSymbol! !
!ILField categoriesFor: #addCondition:!conditions!public! !
!ILField categoriesFor: #addCondition:labelled:!conditions!public! !
!ILField categoriesFor: #addRow:!copying!public! !
!ILField categoriesFor: #build!building!public! !
!ILField categoriesFor: #buildContents!building!public! !
!ILField categoriesFor: #comment:!accessing!public! !
!ILField categoriesFor: #commentContents!accessing!public! !
!ILField categoriesFor: #commentContents:!accessing!public! !
!ILField categoriesFor: #conditions!accessing!public! !
!ILField categoriesFor: #customRows!copying!public! !
!ILField categoriesFor: #customRowsContents!building!public! !
!ILField categoriesFor: #errors!accessing!public! !
!ILField categoriesFor: #errorsContents!building!public! !
!ILField categoriesFor: #fieldContents!building!public! !
!ILField categoriesFor: #formula!copying!public! !
!ILField categoriesFor: #formula:!copying!public! !
!ILField categoriesFor: #id!accessing!public! !
!ILField categoriesFor: #isMultipart!public!testing! !
!ILField categoriesFor: #isValid!public!testing! !
!ILField categoriesFor: #label:!accessing!public! !
!ILField categoriesFor: #labelContents!accessing!public! !
!ILField categoriesFor: #labelContents:!accessing!public! !
!ILField categoriesFor: #on:selector:!private! !
!ILField categoriesFor: #postCopyTo:!copying!public! !
!ILField categoriesFor: #reader!accessing!public! !
!ILField categoriesFor: #reader:!accessing!public! !
!ILField categoriesFor: #tableRowContents!building!public! !
!ILField categoriesFor: #validate!actions!public! !
!ILField categoriesFor: #value!accessing!public! !
!ILField categoriesFor: #value:!accessing!public! !
!ILField categoriesFor: #writer!accessing!public! !
!ILField categoriesFor: #writer:!accessing!public! !

!ILField class methodsFor!

on: aFormula selector: aSelector	^self new		on: aFormula		selector: aSelector;		yourself! !
!ILField class categoriesFor: #on:selector:!instance creation!public! !

