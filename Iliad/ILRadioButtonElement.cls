"Filed out from Dolphin Smalltalk 7"!

ILInputElement subclass: #ILRadioButtonElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRadioButtonElement guid: (GUID fromString: '{abc70c89-d3e1-4001-be78-4ac1c2d0ecc3}')!
ILRadioButtonElement comment: ''!
!ILRadioButtonElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILRadioButtonElement methodsFor!

action: aBlock	| action |	action := self session registerActionFor: aBlock.	self session registerAction: action.	self value: action key!

beforePrintHtml	self attributeAt: 'type' put: 'radio'!

beSelected	self selected: true!

printHtmlOn: aStream	self beforePrintHtml.	self printOpenTagOn: aStream.	self childrenDo: [:each |		each printHtmlOn: aStream].	self printCloseTagOn: aStream.	self afterPrintHtml!

selected: aBoolean	aBoolean ifTrue: [self attributeAt: 'checked' put: 'checked']!

value: aString 	self attributeAt: 'value' put: aString! !
!ILRadioButtonElement categoriesFor: #action:!accessing attributes!public! !
!ILRadioButtonElement categoriesFor: #beforePrintHtml!printing!public! !
!ILRadioButtonElement categoriesFor: #beSelected!accessing attributes!public! !
!ILRadioButtonElement categoriesFor: #printHtmlOn:!printing!public! !
!ILRadioButtonElement categoriesFor: #selected:!accessing attributes!public! !
!ILRadioButtonElement categoriesFor: #value:!accessing!public! !

