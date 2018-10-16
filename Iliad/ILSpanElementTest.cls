"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILSpanElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILSpanElementTest guid: (GUID fromString: '{f24632a8-0ce4-4f2a-b34d-18431d361e7d}')!
ILSpanElementTest comment: ''!
!ILSpanElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILSpanElementTest methodsFor!

setUp	e := ILSpanElement new!

testTag	self assert: e tag equals: 'span'! !
!ILSpanElementTest categoriesFor: #setUp!public!running! !
!ILSpanElementTest categoriesFor: #testTag!public!testing! !

