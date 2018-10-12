"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILTextAreaElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTextAreaElementTest guid: (GUID fromString: '{0327367a-164c-4a64-9e40-7b883d08fa19}')!
ILTextAreaElementTest comment: ''!
!ILTextAreaElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILTextAreaElementTest methodsFor!

setUp	e := ILTextAreaElement new!

testCols	e cols: 3.	self shouldHaveAttribute: 'cols' value: '3'!

testDisabled	e disabled.	self shouldHaveAttribute: 'disabled' value: 'disabled'!

testRows	e rows: 3.	self shouldHaveAttribute: 'rows' value: '3'!

testTabindex	e tabindex: 3.	self shouldHaveAttribute: 'tabindex' value: '3'!

testTag	self assert: e tag equals: 'textarea'! !
!ILTextAreaElementTest categoriesFor: #setUp!public!running! !
!ILTextAreaElementTest categoriesFor: #testCols!public!testing! !
!ILTextAreaElementTest categoriesFor: #testDisabled!public!testing! !
!ILTextAreaElementTest categoriesFor: #testRows!public!testing! !
!ILTextAreaElementTest categoriesFor: #testTabindex!public!testing! !
!ILTextAreaElementTest categoriesFor: #testTag!public!testing! !

