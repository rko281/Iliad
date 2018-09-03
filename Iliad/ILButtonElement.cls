"Filed out from Dolphin Smalltalk 7"!

ILFormElementElement subclass: #ILButtonElement
	instanceVariableNames: 'hiddenAction'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILButtonElement guid: (GUID fromString: '{4a604c44-e017-43ef-bfb7-c17fcb5d3cea}')!
ILButtonElement comment: ''!
!ILButtonElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILButtonElement methodsFor!

beButton	self type: 'button'!

beforePrintHtml	self attributeAt: 'type' ifAbsentPut: ['submit']!

beReset	self type: 'reset'!

beSubmit	self type: 'submit'!

tag	^'button'!

type: aString 	self attributeAt: 'type' put: aString!

value: aString 	self attributeAt: 'value' put: aString! !
!ILButtonElement categoriesFor: #beButton!accessing attributes!public! !
!ILButtonElement categoriesFor: #beforePrintHtml!printing!public! !
!ILButtonElement categoriesFor: #beReset!accessing attributes!public! !
!ILButtonElement categoriesFor: #beSubmit!accessing attributes!public! !
!ILButtonElement categoriesFor: #tag!accessing!public! !
!ILButtonElement categoriesFor: #type:!accessing attributes!public! !
!ILButtonElement categoriesFor: #value:!accessing attributes!public! !

