"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILRequestHandlerTest
	instanceVariableNames: 'requestHandler response'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRequestHandlerTest guid: (GUID fromString: '{5362b33c-4f4b-4f5a-81ee-e9f4094c08d5}')!
ILRequestHandlerTest comment: ''!
!ILRequestHandlerTest categoriesForClass!Iliad-Tests-RequestHandlers! !
!ILRequestHandlerTest methodsFor!

setUp	requestHandler := ILRequestHandler new.	response := ILResponse new!

testAddAllowHeaderTo	| methods headers |	methods := 'OPTIONS,GET,HEAD,POST,DELETE,TRACE,PROPFIND,PROPPATCH,MKCOL,PUT,COPY,MOVE,LOCK,UNLOCK'.	requestHandler addAllowHeaderTo: response.	headers := response headers.	self		assert: ((Dictionary newFrom: headers) at: 'Allow')		equals: methods!

testAddCacheHeaderTo	| timeStamp headers |	timeStamp := (GRPrinter rfc822WithTimeZone: 'GMT')		print:			(DateAndTime				fromSeconds: DateAndTime now asSeconds + (24 * 3600 * 365)).	requestHandler addCacheHeaderTo: response.	headers := response headers.	self		assert: ((Dictionary newFrom: headers) at: 'expires')		equals: timeStamp!

testAddNoCacheHeaderTo	| timeStamp headers |	timeStamp := (GRPrinter rfc822WithTimeZone: 'GMT')		print: DateAndTime now.	requestHandler addNoCacheHeaderTo: response.	headers := response headers.	self		assert: ((Dictionary newFrom: headers) at: 'expires')		equals: timeStamp.	self		assert: ((Dictionary newFrom: headers) at: 'Cache-Control')		equals: 'no-store, no-cache, must-revalidate'! !
!ILRequestHandlerTest categoriesFor: #setUp!public!running! !
!ILRequestHandlerTest categoriesFor: #testAddAllowHeaderTo!public!testing! !
!ILRequestHandlerTest categoriesFor: #testAddCacheHeaderTo!public!testing! !
!ILRequestHandlerTest categoriesFor: #testAddNoCacheHeaderTo!public!testing! !

