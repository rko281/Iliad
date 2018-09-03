"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILInputElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILInputElementTest guid: (GUID fromString: '{78618314-d57d-4b37-97e3-a60bed54e64a}')!
ILInputElementTest comment: ''!
!ILInputElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILInputElementTest methodsFor!

setUp	e := ILInputElement new!

testAccept	e accept: 'foo'.	self shouldHaveAttribute: 'accept' value: 'foo'!

testAccepts	e accepts: #('foo' 'bar').	self shouldHaveAttribute: 'accept' value: 'foo bar'!

testAccessKey	e accesskey: $a.	self shouldHaveAttribute: 'accesskey' value: 'a'!

testAlternativeText	e alt: 'foo'.	self shouldHaveAttribute: 'alt' value: 'foo'!

testAttributes	e beImage.	self shouldHaveAttribute: 'type' value: 'image'.	e beHidden.	self shouldHaveAttribute: 'type' value: 'hidden'.	e beText.	self shouldHaveAttribute: 'type' value: 'text'.	e bePassword.	self shouldHaveAttribute: 'type' value: 'password'!

testBeforePrintHtml	e beforePrintHtml.	self shouldHaveAttribute: 'type' value: 'text'.	e type: 'foo'.	e beforePrintHtml.	self shouldHaveAttribute: 'type' value: 'foo'!

testDisabled	e disabled.	self shouldHaveAttribute: 'disabled' value: 'disabled'!

testIsMap	e ismap.	self shouldHaveAttribute: 'ismap' value: 'ismap'!

testMaxLength	e maxlength: 2.	self shouldHaveAttribute: 'maxlength' value: '2'!

testSize	e size: 2.	self shouldHaveAttribute: 'size' value: '2'!

testTag	self assert: e tag equals: 'input'!

testType	e type: 'foo'.	self shouldHaveAttribute: 'type' value: 'foo'!

testUseMap	e usemap: 'foo'.	self shouldHaveAttribute: 'usemap' value: 'foo'!

testValue	e value: 'foo'.	self shouldHaveAttribute: 'value' value: 'foo'! !
!ILInputElementTest categoriesFor: #setUp!public!running! !
!ILInputElementTest categoriesFor: #testAccept!public!testing! !
!ILInputElementTest categoriesFor: #testAccepts!public!testing! !
!ILInputElementTest categoriesFor: #testAccessKey!public!testing! !
!ILInputElementTest categoriesFor: #testAlternativeText!public!testing! !
!ILInputElementTest categoriesFor: #testAttributes!public!testing! !
!ILInputElementTest categoriesFor: #testBeforePrintHtml!public!testing! !
!ILInputElementTest categoriesFor: #testDisabled!public!testing! !
!ILInputElementTest categoriesFor: #testIsMap!public!testing! !
!ILInputElementTest categoriesFor: #testMaxLength!public!testing! !
!ILInputElementTest categoriesFor: #testSize!public!testing! !
!ILInputElementTest categoriesFor: #testTag!public!testing! !
!ILInputElementTest categoriesFor: #testType!public!testing! !
!ILInputElementTest categoriesFor: #testUseMap!public!testing! !
!ILInputElementTest categoriesFor: #testValue!public!testing! !

