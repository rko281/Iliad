"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILButtonElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILButtonElementTest guid: (GUID fromString: '{7f6fdb9a-a75a-4d96-a167-050f58bc3bbb}')!
ILButtonElementTest comment: ''!
!ILButtonElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILButtonElementTest methodsFor!

setUp	e := ILButtonElement new!

testAccessKey	e accesskey: $a.	self shouldHaveAttribute: 'accesskey' value: 'a'!

testAttributes	e beButton.	self shouldHaveAttribute: 'type' value: 'button'.	e beReset.	self shouldHaveAttribute: 'type' value: 'reset'.	e beSubmit.	self shouldHaveAttribute: 'type' value: 'submit'!

testBeforePrintHtml	e beforePrintHtml.	self shouldHaveAttribute: 'type' value: 'submit'.	e type: 'foo'.	e beforePrintHtml.	self shouldHaveAttribute: 'type' value: 'foo'!

testTag	self assert: e tag equals: 'button'!

testType	e type: 'foo'.	self shouldHaveAttribute: 'type' value: 'foo'!

testValue	e value: 'foo'.	self shouldHaveAttribute: 'value' value: 'foo'! !
!ILButtonElementTest categoriesFor: #setUp!public!running! !
!ILButtonElementTest categoriesFor: #testAccessKey!public!testing! !
!ILButtonElementTest categoriesFor: #testAttributes!public!testing! !
!ILButtonElementTest categoriesFor: #testBeforePrintHtml!public!testing! !
!ILButtonElementTest categoriesFor: #testTag!public!testing! !
!ILButtonElementTest categoriesFor: #testType!public!testing! !
!ILButtonElementTest categoriesFor: #testValue!public!testing! !

