"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILHeadElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILHeadElementTest guid: (GUID fromString: '{5d8b4188-7706-4711-a0b1-d0af9da5bc4b}')!
ILHeadElementTest comment: ''!
!ILHeadElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILHeadElementTest methodsFor!

setUp	e := ILHeadElement new!

testProfile	e profile: 'foo'.	self shouldHaveAttribute: 'profile' value: 'foo'!

testProfiles	e profiles: #('foo' 'bar').	self shouldHaveAttribute: 'profile' value: 'foo bar'!

testTag	self assert: e tag equals: 'head'!

testTitle	e title: 'foo'.	self assert: e title equals: 'foo'! !
!ILHeadElementTest categoriesFor: #setUp!public!running! !
!ILHeadElementTest categoriesFor: #testProfile!public!tests! !
!ILHeadElementTest categoriesFor: #testProfiles!public!tests! !
!ILHeadElementTest categoriesFor: #testTag!public!tests! !
!ILHeadElementTest categoriesFor: #testTitle!public!tests! !

