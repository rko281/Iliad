"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILRequestHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRequestHandler guid: (GUID fromString: '{a2616eb1-7be1-4433-bf74-b39c6215f5bd}')!
ILRequestHandler comment: 'I implement the basic behavior needed to handle requests.My sublcasses must override #newResponse to handle requests, and most likely #produceResponse.The current handled request is answered by the #request method inherited from ILObject'!
!ILRequestHandler categoriesForClass!Iliad-Core-RequestHandlers! !
!ILRequestHandler methodsFor!

addAllowHeaderTo: aResponse	| methods |	methods := 'OPTIONS,GET,HEAD,POST,DELETE,TRACE,PROPFIND,PROPPATCH,MKCOL,PUT,COPY,MOVE,LOCK,UNLOCK'.	aResponse headerAt: 'Allow' put: methods!

addCacheHeaderTo: aResponse	aResponse 		headerAt: 'expires' 		put: ((GRPrinter rfc822WithTimeZone: 'GMT') 			print: (DateAndTime fromSeconds: DateAndTime now asSeconds + (24*3600*365)))!

addCookieHeaderTo: aResponse	aResponse 		addCookie: (ILCookie new 			key: self session sessionManager cookieName; 			value: self session id; 			expireIn: (Duration days: 600);			yourself)!

addNoCacheHeaderTo: aResponse	aResponse 		headerAt: 'expires'		put: ((GRPrinter rfc822WithTimeZone: 'GMT') print: DateAndTime now).	aResponse headerAt: 'Cache-Control' put: 'no-store, no-cache, must-revalidate'!

handleRequest	self produceResponse!

newResponse	self subclassResponsibility!

produceResponse	self respond: [:response | ]!

respond: aBlock	| response |	response := self newResponse.	aBlock value: response.	self returnResponse: response!

returnResponse: aResponse	ILResponseNotification new		response: aResponse;		signal! !
!ILRequestHandler categoriesFor: #addAllowHeaderTo:!private! !
!ILRequestHandler categoriesFor: #addCacheHeaderTo:!private! !
!ILRequestHandler categoriesFor: #addCookieHeaderTo:!private! !
!ILRequestHandler categoriesFor: #addNoCacheHeaderTo:!private! !
!ILRequestHandler categoriesFor: #handleRequest!public!request handling! !
!ILRequestHandler categoriesFor: #newResponse!private! !
!ILRequestHandler categoriesFor: #produceResponse!public!responding! !
!ILRequestHandler categoriesFor: #respond:!private! !
!ILRequestHandler categoriesFor: #returnResponse:!private! !

