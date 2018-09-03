"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILApplicationTest
	instanceVariableNames: 'application'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILApplicationTest guid: (GUID fromString: '{5afb7901-5b16-4fa6-89a2-82f6127ad411}')!
ILApplicationTest comment: ''!
!ILApplicationTest categoriesForClass!Iliad-Tests-Buildables! !
!ILApplicationTest methodsFor!

setUp	application := ILApplicationMock1 new!

testDefaultSelectorFilter	self assert: (application allowedSelector: #index).	self deny: (application allowedSelector: #dispatch)!

testDispatch	[application dispatchOn: #foo]		on: Error		do: [:e | self assert: (e isKindOf: ILDispatchError)]! !
!ILApplicationTest categoriesFor: #setUp!public!running! !
!ILApplicationTest categoriesFor: #testDefaultSelectorFilter!public!tests! !
!ILApplicationTest categoriesFor: #testDispatch!public!tests! !

