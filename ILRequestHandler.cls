﻿"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILRequestHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRequestHandler guid: (GUID fromString: '{a2616eb1-7be1-4433-bf74-b39c6215f5bd}')!
ILRequestHandler comment: 'I implement the basic behavior needed to handle requests.
!ILRequestHandler categoriesForClass!Iliad-Core-RequestHandlers! !
!ILRequestHandler methodsFor!

addAllowHeaderTo: aResponse

addCacheHeaderTo: aResponse

addCookieHeaderTo: aResponse

addNoCacheHeaderTo: aResponse

handleRequest

newResponse

produceResponse

respond: aBlock

returnResponse: aResponse
!ILRequestHandler categoriesFor: #addAllowHeaderTo:!private! !
!ILRequestHandler categoriesFor: #addCacheHeaderTo:!private! !
!ILRequestHandler categoriesFor: #addCookieHeaderTo:!private! !
!ILRequestHandler categoriesFor: #addNoCacheHeaderTo:!private! !
!ILRequestHandler categoriesFor: #handleRequest!public!request handling! !
!ILRequestHandler categoriesFor: #newResponse!private! !
!ILRequestHandler categoriesFor: #produceResponse!public!responding! !
!ILRequestHandler categoriesFor: #respond:!private! !
!ILRequestHandler categoriesFor: #returnResponse:!private! !
