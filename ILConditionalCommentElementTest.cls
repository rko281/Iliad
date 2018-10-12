"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILConditionalCommentElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILConditionalCommentElementTest guid: (GUID fromString: '{762c63ae-50a9-493b-a833-281dc24a2116}')!
ILConditionalCommentElementTest comment: ''!
!ILConditionalCommentElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILConditionalCommentElementTest methodsFor!

setUp	e := ILConditionalCommentElement new!

testGt	e gt.	self assert: (e conditions includes: 'gt')	!

testIe	e ie.	self assert: (e conditions includes: 'IE')	!

testIe5	e ie5.	self assert: (e conditions includes: 'IE 5')	!

testIe50	e ie50.	self assert: (e conditions includes: 'IE 5.0')	!

testIe55	e ie55.	self assert: (e conditions includes: 'IE 5.5')	!

testIe6	e ie6.	self assert: (e conditions includes: 'IE 6')	!

testIe7	e ie7.	self assert: (e conditions includes: 'IE 7')	!

testIe8	e ie8.	self assert: (e conditions includes: 'IE 8')	!

testLt	e lt.	self assert: (e conditions includes: 'lt')	!

testNot	e not.	self assert: (e conditions includes: '!!')	! !
!ILConditionalCommentElementTest categoriesFor: #setUp!public!running! !
!ILConditionalCommentElementTest categoriesFor: #testGt!public!testing! !
!ILConditionalCommentElementTest categoriesFor: #testIe!public!testing! !
!ILConditionalCommentElementTest categoriesFor: #testIe5!public!testing! !
!ILConditionalCommentElementTest categoriesFor: #testIe50!public!testing! !
!ILConditionalCommentElementTest categoriesFor: #testIe55!public!testing! !
!ILConditionalCommentElementTest categoriesFor: #testIe6!public!testing! !
!ILConditionalCommentElementTest categoriesFor: #testIe7!public!testing! !
!ILConditionalCommentElementTest categoriesFor: #testIe8!public!testing! !
!ILConditionalCommentElementTest categoriesFor: #testLt!public!testing! !
!ILConditionalCommentElementTest categoriesFor: #testNot!public!testing! !

