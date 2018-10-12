"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILRubyTextElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRubyTextElementTest guid: (GUID fromString: '{2fa184ef-30e5-4555-8da4-1c1817a7d2ec}')!
ILRubyTextElementTest comment: ''!
!ILRubyTextElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILRubyTextElementTest methodsFor!

setUp	e := ILRubyTextElement new!

testRubyBaseSpan	e rbspan: 2.	self shouldHaveAttribute: 'rbspan' value: '2'!

testTag	self assert: e tag equals: 'rt'! !
!ILRubyTextElementTest categoriesFor: #setUp!public!running! !
!ILRubyTextElementTest categoriesFor: #testRubyBaseSpan!public!testing! !
!ILRubyTextElementTest categoriesFor: #testTag!public!testing! !

