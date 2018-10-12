"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILRadioButtonElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRadioButtonElementTest guid: (GUID fromString: '{8ef24e24-2c89-4218-b9bb-398d19160cdc}')!
ILRadioButtonElementTest comment: ''!
!ILRadioButtonElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILRadioButtonElementTest methodsFor!

setUp	e := ILRadioButtonElement new!

testBeforePrintHtml	e beforePrintHtml.	self shouldHaveAttribute: 'type' value: 'radio'!

testBeSelected	e beSelected.	self shouldHaveAttribute: 'checked' value: 'checked'!

testSelected	e selected: true.	self shouldHaveAttribute: 'checked' value: 'checked'!

testValue	e value: 'foo'.	self shouldHaveAttribute: 'value' value: 'foo'! !
!ILRadioButtonElementTest categoriesFor: #setUp!public!running! !
!ILRadioButtonElementTest categoriesFor: #testBeforePrintHtml!public!testing! !
!ILRadioButtonElementTest categoriesFor: #testBeSelected!public!testing! !
!ILRadioButtonElementTest categoriesFor: #testSelected!public!testing! !
!ILRadioButtonElementTest categoriesFor: #testValue!public!testing! !

