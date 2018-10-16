"Filed out from Dolphin Smalltalk 7"!

ILApplication subclass: #ILRSSMockApplication
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSMockApplication guid: (GUID fromString: '{0d8c7cb1-1f49-40cc-8bc4-c5a1327952fa}')!
ILRSSMockApplication comment: ''!
!ILRSSMockApplication categoriesForClass!Iliad-More-RSS! !
!ILRSSMockApplication methodsFor!

index	self returnResponse: ILRSSMock new asResponse! !
!ILRSSMockApplication categoriesFor: #index!controllers!public! !

!ILRSSMockApplication class methodsFor!

path	^'examples/rss'! !
!ILRSSMockApplication class categoriesFor: #path!accessing!public! !

