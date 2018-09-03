"Filed out from Dolphin Smalltalk 7"!

ILRequestHandler subclass: #ILNotFoundHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILNotFoundHandler guid: (GUID fromString: '{0b9422f0-d87e-4c3f-9650-3697be2b1645}')!
ILNotFoundHandler comment: ''!
!ILNotFoundHandler categoriesForClass!Iliad-Core-RequestHandlers! !
!ILNotFoundHandler methodsFor!

newResponse	^ILResponse notFound!

produceResponse	self respond: [:response |		response			nextPutAll: '<h1>404 Not Found: ';			nextPutAll: self request url greaseString;			nextPutAll: '</h1>']! !
!ILNotFoundHandler categoriesFor: #newResponse!private! !
!ILNotFoundHandler categoriesFor: #produceResponse!public!responding! !

