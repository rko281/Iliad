"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILActionTest
	instanceVariableNames: 'action'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILActionTest guid: (GUID fromString: '{bdbe2b2b-fa24-4024-9920-1951f7b63ca5}')!
ILActionTest comment: ''!
!ILActionTest categoriesForClass!Iliad-Tests-Sessions! !
!ILActionTest methodsFor!

setUp	action := ILAction new!

testBlock	action block: [ 1 + 1 ].	self assert: action block value equals: 2!

testEvaluate	| result |	result := 2.	action block: [ :it | it + 1 ].	action value: result.	result := action evaluate.	self assert: result equals: 3.	action value: result.	result := action evaluate.	self assert: result equals: 4! !
!ILActionTest categoriesFor: #setUp!public!running! !
!ILActionTest categoriesFor: #testBlock!public!testing! !
!ILActionTest categoriesFor: #testEvaluate!public!testing! !

