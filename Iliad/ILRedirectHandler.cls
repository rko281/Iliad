"Filed out from Dolphin Smalltalk 7"!

ILRequestHandler subclass: #ILRedirectHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRedirectHandler guid: (GUID fromString: '{38c4776b-23cc-480f-8d8e-020f5d48d835}')!
ILRedirectHandler comment: ''!
!ILRedirectHandler categoriesForClass!Iliad-Core-RequestHandlers! !
!ILRedirectHandler methodsFor!

newResponse	^ILResponse redirect!

produceResponse	self setRedirectUrl.	self shouldRespondInJson ifTrue: [		ILJsonHandler new handleRequest].	self respond: [:response |		response redirectTo: self session redirectUrl greaseString.		self session clearRedirectUrl.		self addCookieHeaderTo: response]!

setRedirectUrl	self session redirectUrl ifNil: [		self session redirectUrl: self context baseUrl greaseString]!

shouldRespondInJson	^self request isTypeOfRequestForJson! !
!ILRedirectHandler categoriesFor: #newResponse!private! !
!ILRedirectHandler categoriesFor: #produceResponse!public!responding! !
!ILRedirectHandler categoriesFor: #setRedirectUrl!private! !
!ILRedirectHandler categoriesFor: #shouldRespondInJson!public!testing! !

