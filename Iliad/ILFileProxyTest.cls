"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILFileProxyTest
	instanceVariableNames: 'fileProxy'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileProxyTest guid: (GUID fromString: '{4819db34-106a-47e6-be39-ed4c5da43b27}')!
ILFileProxyTest comment: ''!
!ILFileProxyTest categoriesForClass!Iliad-Tests-lib-HTTP! !
!ILFileProxyTest methodsFor!

setUp	fileProxy := ILFileProxy new!

testTimestamp	| timeStamp |	timeStamp := DateAndTime now.	self assert: (fileProxy timestampsAt: #foo) equals: nil.	fileProxy timestampsAt: #foo put: timeStamp.	self assert: (fileProxy timestamps at: #foo) equals: timeStamp! !
!ILFileProxyTest categoriesFor: #setUp!public!running! !
!ILFileProxyTest categoriesFor: #testTimestamp!public!testing! !

