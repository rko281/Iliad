"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILRequestTest
	instanceVariableNames: 'request'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRequestTest guid: (GUID fromString: '{1b454593-6fc4-4579-b4f7-0a0d855ea524}')!
ILRequestTest comment: ''!
!ILRequestTest categoriesForClass!Iliad-Tests-lib-HTTP! !
!ILRequestTest methodsFor!

setUp	request := ILRequest new!

testIsGet	request method: 'get'.	self assert: request isGet	!

testIsPost	request method: 'post'.	self assert: request isPost	!

testIsPut	request method: 'put'.	self assert: request isPut	! !
!ILRequestTest categoriesFor: #setUp!public!running! !
!ILRequestTest categoriesFor: #testIsGet!public!testing! !
!ILRequestTest categoriesFor: #testIsPost!public!testing! !
!ILRequestTest categoriesFor: #testIsPut!public!testing! !

