"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILCurrentContextTest
	instanceVariableNames: 'context'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCurrentContextTest guid: (GUID fromString: '{9da11786-6fd5-4336-a891-66197f8b8788}')!
ILCurrentContextTest comment: ''!
!ILCurrentContextTest categoriesForClass!Iliad-Tests-Sessions! !
!ILCurrentContextTest methodsFor!

setUp	context := ILContext new!

testCurrentContext	ILCurrentContext		use: context		during: [ self assert: ILCurrentContext value equals: context ].	self assert: ILCurrentContext value equals: nil! !
!ILCurrentContextTest categoriesFor: #setUp!public!running! !
!ILCurrentContextTest categoriesFor: #testCurrentContext!public!testing! !

