"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILResponseTest
	instanceVariableNames: 'response'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILResponseTest guid: (GUID fromString: '{1ea4ff13-5237-4ad2-9ace-d0ef9ce6dc32}')!
ILResponseTest comment: ''!
!ILResponseTest categoriesForClass!Iliad-Tests-lib-HTTP! !
!ILResponseTest methodsFor!

setUp	response := ILResponse new!

testAuthenticationFailed	response authenticationFailed.	self assert: response status equals: 401!

testForbidden	response forbidden.	self assert: response status equals: 403!

testInternalError	response internalError.	self assert: response status equals: 500!

testNotFound	response notFound.	self assert: response status equals: 404!

testOk	response ok.	self assert: response status equals: 200!

testRedirect	response redirect.	self assert: response status equals: 302! !
!ILResponseTest categoriesFor: #setUp!public!running! !
!ILResponseTest categoriesFor: #testAuthenticationFailed!public!testing! !
!ILResponseTest categoriesFor: #testForbidden!public!testing! !
!ILResponseTest categoriesFor: #testInternalError!public!testing! !
!ILResponseTest categoriesFor: #testNotFound!public!testing! !
!ILResponseTest categoriesFor: #testOk!public!testing! !
!ILResponseTest categoriesFor: #testRedirect!public!testing! !

