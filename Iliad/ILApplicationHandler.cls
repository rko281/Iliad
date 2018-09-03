"Filed out from Dolphin Smalltalk 7"!

ILRequestHandler subclass: #ILApplicationHandler
	instanceVariableNames: 'actions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILApplicationHandler guid: (GUID fromString: '{a3b74bf9-15c3-4ea4-8fe0-29fe21de451d}')!
ILApplicationHandler comment: ''!
!ILApplicationHandler categoriesForClass!Iliad-Core-RequestHandlers! !
!ILApplicationHandler methodsFor!

evaluateActions	self getActionsFromRequest.	(actions asSortedCollection: [ : a : b | a key asInteger < b key asInteger ])		do: #evaluate!

getActionsFromRequest	| action |	actions := OrderedCollection new.	self request isGet ifTrue: [| actionField |		actionField := self request actionField.		action := self session actionAt: actionField.		action ifNotNil: [actions add: action]].	self request isPost ifTrue: [		self request fields associations do: [:asso |		(action := self session actionAt: asso value) ifNil: [			action := self session actionAt: asso key.			action ifNotNil: [action value: asso value]].		action ifNotNil: [actions add: action]]]!

handleRequest	self session isExpired ifTrue: [self session onExpire].	self isRequestValid 		ifTrue: [self evaluateActions]		ifFalse: [ILRedirectHandler new handleRequest].	self shouldReturnEmptyResponse ifTrue: [		self returnResponse: ILResponse ok].	self shouldRespondInJson ifTrue: [		ILJsonHandler new handleRequest].	self shouldRedirect 		ifTrue: [ILRedirectHandler new handleRequest]		ifFalse: [self produceResponse]!

initialize	super initialize.	actions := OrderedCollection new!

isRequestValid	^self context previousStateRegistry notNil		or: [self request actionField isNil and: [self request isPost not]]!

newResponse	^self application asResponse!

produceResponse	self respond: [ : response | 		self addAllowHeaderTo: response.		self session useCookies ifTrue: [ self addCookieHeaderTo: response ].		self session refreshOnBacktrack ifTrue: [ self addNoCacheHeaderTo: response ] ]!

shouldRedirect	^self request isTypeOfRequestForRedirect!

shouldRespondInJson	^self request isTypeOfRequestForJson!

shouldReturnEmptyResponse 	^self request ajaxUploadField notNil! !
!ILApplicationHandler categoriesFor: #evaluateActions!public!request handling! !
!ILApplicationHandler categoriesFor: #getActionsFromRequest!private! !
!ILApplicationHandler categoriesFor: #handleRequest!public!request handling! !
!ILApplicationHandler categoriesFor: #initialize!initialization!public! !
!ILApplicationHandler categoriesFor: #isRequestValid!public!testing! !
!ILApplicationHandler categoriesFor: #newResponse!private! !
!ILApplicationHandler categoriesFor: #produceResponse!public!responding! !
!ILApplicationHandler categoriesFor: #shouldRedirect!public!testing! !
!ILApplicationHandler categoriesFor: #shouldRespondInJson!public!testing! !
!ILApplicationHandler categoriesFor: #shouldReturnEmptyResponse!public!testing! !

