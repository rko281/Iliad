"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILOptionGroupElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILOptionGroupElementTest guid: (GUID fromString: '{afb2c657-157e-48b4-9859-4d8ef30df9c9}')!
ILOptionGroupElementTest comment: ''!
!ILOptionGroupElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILOptionGroupElementTest methodsFor!

setUp	e := ILOptionGroupElement new!

testDisabled	e disabled.	self shouldHaveAttribute: 'disabled' value: 'disabled'!

testLabel	e label: 'foo'.	self shouldHaveAttribute: 'label' value: 'foo'!

testTag	self assert: e tag equals: 'optgroup'! !
!ILOptionGroupElementTest categoriesFor: #setUp!public!running! !
!ILOptionGroupElementTest categoriesFor: #testDisabled!public!testing! !
!ILOptionGroupElementTest categoriesFor: #testLabel!public!testing! !
!ILOptionGroupElementTest categoriesFor: #testTag!public!testing! !

