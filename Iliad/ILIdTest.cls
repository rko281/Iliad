"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILIdTest
	instanceVariableNames: 'ids'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILIdTest guid: (GUID fromString: '{21534e17-d932-4a76-8d9f-380f889c7f21}')!
ILIdTest comment: ''!
!ILIdTest categoriesForClass!Iliad-Tests-Utilities! !
!ILIdTest methodsFor!

setUp	ids := OrderedCollection new.	1000 timesRepeat: [ids add: ILId new]!

testUnicity	ids do: [ :each | self assert: (ids occurrencesOf: each) equals: 1 ]! !
!ILIdTest categoriesFor: #setUp!public!running! !
!ILIdTest categoriesFor: #testUnicity!public!testing! !

