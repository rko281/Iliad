"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILModelProxyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILModelProxyTest guid: (GUID fromString: '{f25268d9-4466-4725-861b-3da4c932888e}')!
ILModelProxyTest comment: ''!
!ILModelProxyTest categoriesForClass!Iliad-Tests-Utilities! !
!ILModelProxyTest methodsFor!

test	| cookie proxy |	cookie := ILCookie new.	cookie key: 'The Metaphor'.	proxy := ILModelProxy on: cookie.	self assert: proxy key equals: cookie key.	self assert: cookie expiry isNil.	self assert: proxy expiry equals: cookie expiry.	proxy expiry: (DateAndTime fromSeconds: 36209).	self assert: proxy expiry equals: (DateAndTime fromSeconds: 36209).	self assert: cookie expiry isNil.	proxy commit.	self assert: cookie expiry equals: (DateAndTime fromSeconds: 36209)! !
!ILModelProxyTest categoriesFor: #test!public!testing! !

