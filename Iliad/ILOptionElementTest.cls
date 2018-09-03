"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILOptionElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILOptionElementTest guid: (GUID fromString: '{df025194-6996-46a3-b4aa-392d408a4f2b}')!
ILOptionElementTest comment: ''!
!ILOptionElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILOptionElementTest methodsFor!

setUp	e := ILOptionElement new!

testDisabled	e disabled.	self shouldHaveAttribute: 'disabled' value: 'disabled'!

testLabel	e label: 'foo'.	self shouldHaveAttribute: 'label' value: 'foo'!

testSelected	e selected.	self shouldHaveAttribute: 'selected' value: 'selected'!

testTag	self assert: e tag equals: 'option'!

testValue	e value: 'foo'.	self shouldHaveAttribute: 'value' value: 'foo'! !
!ILOptionElementTest categoriesFor: #setUp!public!running! !
!ILOptionElementTest categoriesFor: #testDisabled!public!testing! !
!ILOptionElementTest categoriesFor: #testLabel!public!testing! !
!ILOptionElementTest categoriesFor: #testSelected!public!testing! !
!ILOptionElementTest categoriesFor: #testTag!public!testing! !
!ILOptionElementTest categoriesFor: #testValue!public!testing! !

