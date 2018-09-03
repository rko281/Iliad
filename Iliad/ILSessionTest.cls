"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILSessionTest
	instanceVariableNames: 'session'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILSessionTest guid: (GUID fromString: '{d27383b5-56f9-4eb6-90ec-6fbcb75ae49c}')!
ILSessionTest comment: ''!
!ILSessionTest categoriesForClass!Iliad-Tests-Sessions! !
!ILSessionTest methodsFor!

setUp	session := ILSession new. 	ILApplicationMock1 path: 'test'.	ILApplicationMock2 path: 'test/foo'!

tearDown 	ILApplicationMock1 path: nil.	ILApplicationMock2 path: nil!

testCharset	session charset: 'foo'.	self assert: session charset equals: 'foo'!

testExpire	| s |	s := ILSession new.	self deny: (s isExpired).	s expire.	self assert: (s isExpired)!

testPreferenceAt	| obj |	obj := 'bar'.	session preferenceAt: #foo put: obj.	self		assert: (session preferenceAt: #foo)		equals: obj!

testRefreshOnBacktrack	session refreshOnBacktrack: true.	self assert: session refreshOnBacktrack equals: true!

testUseCoookies	session useCookies: true.	self assert: session useCookies equals: true! !
!ILSessionTest categoriesFor: #setUp!public!running! !
!ILSessionTest categoriesFor: #tearDown!public!running! !
!ILSessionTest categoriesFor: #testCharset!public!tests! !
!ILSessionTest categoriesFor: #testExpire!public!tests! !
!ILSessionTest categoriesFor: #testPreferenceAt!public!tests! !
!ILSessionTest categoriesFor: #testRefreshOnBacktrack!public!tests! !
!ILSessionTest categoriesFor: #testUseCoookies!public!tests! !

