"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILSessionManagerTest
	instanceVariableNames: 'manager'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILSessionManagerTest guid: (GUID fromString: '{832fe601-1183-4c8f-92e3-383829a24be6}')!
ILSessionManagerTest comment: ''!
!ILSessionManagerTest categoriesForClass!Iliad-Tests-Sessions! !
!ILSessionManagerTest methodsFor!

setUp	manager := ILSessionManager current!

tearDown	manager := nil!

testAddRemove	| session1 session2 |	session1 := ILSession new.	session2 := ILSession new.	manager addSession: session1.	self deny: (manager hasSession: session2).	self assert: (manager hasSession: session1).	manager addSession: session2.	self assert: (manager hasSession: session2).	manager removeSession: session1.	self deny: (manager hasSession: session1).	manager removeSession: session2.	self deny: (manager hasSession: session2).	session1 := session2 := nil!

testExpiredSession	| session |	session := ILSession new		expirySeconds: -1;		yourself.	manager addSession: session.	self assert: (manager hasSession: session).	manager removeExpiredSessions.	self assert: session isExpired.	self deny: (manager hasSession: session)!

testFindSession	| session1 session2 request1 request2 |	session1 := ILSession new.	request1 := ILRequest new		fields:			(Dictionary new				at: '_session' put: session1 id greaseString;				yourself);		yourself.	session2 := ILSession new.	request2 := ILRequest new		fields:			(Dictionary new				at: '_session' put: session2 id greaseString;				yourself);		yourself.	manager addSession: session1.	manager addSession: session2.	self		assert: (manager findOrMakeSessionFor: request1)		equals: session1.	self		assert: (manager findOrMakeSessionFor: request2)		equals: session2.	manager		removeSession: session2;		removeSession: session1.	self deny: (manager findOrMakeSessionFor: request1) = session1.	self deny: (manager findOrMakeSessionFor: request2) = session2.	session1 := session2 := nil!

testPreferences	| obj |	obj := 'bar'.	manager preferenceAt: #foo put: obj.	self assert: (manager preferenceAt: #foo) equals: obj! !
!ILSessionManagerTest categoriesFor: #setUp!public!running! !
!ILSessionManagerTest categoriesFor: #tearDown!public!running! !
!ILSessionManagerTest categoriesFor: #testAddRemove!public!testing! !
!ILSessionManagerTest categoriesFor: #testExpiredSession!public!testing! !
!ILSessionManagerTest categoriesFor: #testFindSession!public!testing! !
!ILSessionManagerTest categoriesFor: #testPreferences!public!testing! !

