"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILRSSCloudElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSCloudElementTest guid: (GUID fromString: '{dbf91540-7d50-4290-a870-4d1b129bd682}')!
ILRSSCloudElementTest comment: ''!
!ILRSSCloudElementTest categoriesForClass!Iliad-Tests-RSS! !
!ILRSSCloudElementTest methodsFor!

setUp	e := ILRSSCloudElement new!

testDomain	e domain: 'foo'.	self shouldHaveAttribute: 'domain' value: 'foo'!

testPath	e path: 'foo'.	self shouldHaveAttribute: 'path' value: 'foo'!

testPort	e port: 9999.	self shouldHaveAttribute: 'port' value: '9999'!

testProtocol	e protocol: 'ssh'.	self shouldHaveAttribute: 'protocol' value: 'ssh'!

testRegisterProcedure	e registerProcedure: 'Namespace.Object'.	self shouldHaveAttribute: 'registerProcedure' value: 'Namespace.Object'!

testTag	self assert: e tag equals: 'cloud'! !
!ILRSSCloudElementTest categoriesFor: #setUp!public!running! !
!ILRSSCloudElementTest categoriesFor: #testDomain!public!testing! !
!ILRSSCloudElementTest categoriesFor: #testPath!public!testing! !
!ILRSSCloudElementTest categoriesFor: #testPort!public!testing! !
!ILRSSCloudElementTest categoriesFor: #testProtocol!public!testing! !
!ILRSSCloudElementTest categoriesFor: #testRegisterProcedure!public!testing! !
!ILRSSCloudElementTest categoriesFor: #testTag!public!running! !

