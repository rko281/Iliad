"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILSession
	instanceVariableNames: 'id preferences others timestamps expired redirectUrl applications actionRegistry stateRegistries nextId'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILSession guid: (GUID fromString: '{126336d0-7af2-4eac-b648-171e287b9ac6}')!
ILSession comment: 'I represent a session in Iliad. I persist as long as I am active (i.e. an user interacts with an application). When I am inactive, I expire after a timeout set by #expirySeconds. I also store actions and applications.'!
!ILSession categoriesForClass!Iliad-Core-Sessions! !
!ILSession methodsFor!

actionAt: aKeyString	^self actionRegistry actionAt: aKeyString!

actionFor: aBlock	^ILAction new 		block: aBlock;		key: self nextId;		yourself!

actionRegistry	^actionRegistry ifNil: [actionRegistry := ILActionRegistry new]!

applications	^applications ifNil: [applications := IdentityDictionary new]!

charset	^self preferenceAt: #charset ifAbsentPut: ['utf-8']!

charset: aString	^self preferenceAt: #charset put: aString!

checkExpired	(DateAndTime now asSeconds - self modifiedTimestamp asSeconds > self expirySeconds) 		ifTrue: [self expire]!

clearActionRegistry	actionRegistry := nil!

clearRedirectUrl	redirectUrl := nil!

clearStateRegistries	stateRegistries := nil!

createdTimestamp	^self timestamps at: #created ifAbsent: [self setCreatedTimestamp]!

defaultExpirySeconds	^1800!

defaultLanguage	^#en!

dirtyWidgets	^self previousStateRegistry		ifNil: [#()]		ifNotNil: [self previousStateRegistry dirtyWidgets]!

encoding	^self charset!

evaluateActionKey: aString	self actionRegistry evaluateActionKey: aString!

expire	self actionRegistry unregisterAllActions.	self sessionManager removeSession: self.	expired := true!

expirySeconds	^self preferenceAt: #expirySeconds 		ifAbsentPut: [self defaultExpirySeconds]  !

expirySeconds: anInteger	^self preferenceAt: #expirySeconds put: anInteger!

id	^id!

id: anObject	id := anObject!

initialize	super initialize.	expired := false.	self setCreatedTimestamp; 		setRandomId!

isExpired	^expired!

language	^self preferenceAt: #language ifAbsentPut: [self defaultLanguage]!

language: aSymbol	^self preferences at: #language put: aSymbol!

modifiedTimestamp	^self timestamps at: #modified ifAbsent: [self createdTimestamp]!

newStateRegistry	| registry |	registry := ILStateRegistry new.	self stateRegistries add: registry.	^registry!

nextId	nextId ifNil: [nextId := GRPlatform current newRandom nextInt: 100000].	nextId := nextId + 1.	^nextId greaseString!

onExpire 	self redirect!

otherAt: aKey	^self others at: aKey ifAbsent: [nil]!

otherAt: aKey ifAbsentPut: aBlock	^self others at: aKey ifAbsentPut: aBlock!

otherAt: aKey put: anObject	^self others at: aKey put: anObject!

others	^others ifNil: [others := Dictionary new]!

preferenceAt: aSymbol	^ self preferences		at: aSymbol		ifAbsent: [ nil ]!

preferenceAt: aSymbol ifAbsentPut: aBlock	^self preferences at: aSymbol ifAbsentPut: aBlock!

preferenceAt: aSymbol put: anObject	^self preferences at: aSymbol put: anObject!

preferences	^preferences ifNil: [preferences := Dictionary new]!

previousStateRegistry 	^self context previousStateRegistry!

redirect	ILRedirectHandler new handleRequest!

redirectTo: anUrlString	self context application redirectTo: anUrlString!

redirectToIndex	self context application redirectToIndex!

redirectToLocal: anUrlString	self context application redirectToLocal: anUrlString!

redirectUrl	^redirectUrl!

redirectUrl: aString	redirectUrl := (self context urlBuilder urlForRedirection: aString) asString!

refreshOnBacktrack	^self preferenceAt: #refreshOnBacktrack ifAbsentPut: [true]!

refreshOnBacktrack: aBoolean	^self preferenceAt: #refreshOnBacktrack put: aBoolean!

registerAction: anAction	self actionRegistry register: anAction!

registerActionFor: aBlock	| action |	action := self actionFor: aBlock.	self registerAction: action.	^action!

route	^self context route!

sessionManager	^ILSessionManager current!

setCreatedTimestamp	self timestampAt: #created put: DateAndTime now!

setModifiedTimestamp	self timestampAt: #modified put: DateAndTime now!

setRandomId	^self id: ILId new!

shouldUseSessionField	^(self request cookies includesKey: self sessionManager cookieName) not!

stateRegistries	^stateRegistries ifNil: [stateRegistries := OrderedCollection new]!

stateRegistry	^self context stateRegistry!

stateRegistryAt: aString	^self stateRegistries		detect: [:each | each key = aString]		ifNone: [nil]!

timestampAt: aSymbol	^self timestamps at: aSymbol ifAbsent: [nil]!

timestampAt: aSymbol ifAbsentPut: aBlock	^self timestamps at: aSymbol ifAbsentPut: aBlock!

timestampAt: aSymbol put: anObject	^self timestamps at: aSymbol put: anObject!

timestamps	^timestamps ifNil: [timestamps := Dictionary new]!

useCookies	^self preferenceAt: #cookies ifAbsentPut: [true]!

useCookies: aBoolean	^self preferenceAt: #cookies put: aBoolean! !
!ILSession categoriesFor: #actionAt:!actions!public! !
!ILSession categoriesFor: #actionFor:!actions!public! !
!ILSession categoriesFor: #actionRegistry!actions!public! !
!ILSession categoriesFor: #applications!accessing!public! !
!ILSession categoriesFor: #charset!accessing preferences!public! !
!ILSession categoriesFor: #charset:!accessing preferences!public! !
!ILSession categoriesFor: #checkExpired!actions!public! !
!ILSession categoriesFor: #clearActionRegistry!cleaning!public! !
!ILSession categoriesFor: #clearRedirectUrl!cleaning!public! !
!ILSession categoriesFor: #clearStateRegistries!cleaning!public! !
!ILSession categoriesFor: #createdTimestamp!accessing timestamps!public! !
!ILSession categoriesFor: #defaultExpirySeconds!defaults!public! !
!ILSession categoriesFor: #defaultLanguage!defaults!public! !
!ILSession categoriesFor: #dirtyWidgets!accessing!public! !
!ILSession categoriesFor: #encoding!accessing!public! !
!ILSession categoriesFor: #evaluateActionKey:!actions!public! !
!ILSession categoriesFor: #expire!actions!public! !
!ILSession categoriesFor: #expirySeconds!accessing preferences!public! !
!ILSession categoriesFor: #expirySeconds:!accessing preferences!public! !
!ILSession categoriesFor: #id!accessing!public! !
!ILSession categoriesFor: #id:!accessing!public! !
!ILSession categoriesFor: #initialize!initialization!public! !
!ILSession categoriesFor: #isExpired!public!testing! !
!ILSession categoriesFor: #language!accessing preferences!public! !
!ILSession categoriesFor: #language:!accessing preferences!public! !
!ILSession categoriesFor: #modifiedTimestamp!accessing timestamps!public! !
!ILSession categoriesFor: #newStateRegistry!public!states! !
!ILSession categoriesFor: #nextId!accessing!public! !
!ILSession categoriesFor: #onExpire!events!public! !
!ILSession categoriesFor: #otherAt:!accessing!public! !
!ILSession categoriesFor: #otherAt:ifAbsentPut:!accessing!public! !
!ILSession categoriesFor: #otherAt:put:!accessing!public! !
!ILSession categoriesFor: #others!accessing!public! !
!ILSession categoriesFor: #preferenceAt:!accessing preferences!public! !
!ILSession categoriesFor: #preferenceAt:ifAbsentPut:!accessing preferences!public! !
!ILSession categoriesFor: #preferenceAt:put:!accessing preferences!public! !
!ILSession categoriesFor: #preferences!accessing preferences!public! !
!ILSession categoriesFor: #previousStateRegistry!accessing!public! !
!ILSession categoriesFor: #redirect!public!redirection! !
!ILSession categoriesFor: #redirectTo:!public!redirection! !
!ILSession categoriesFor: #redirectToIndex!public!redirection! !
!ILSession categoriesFor: #redirectToLocal:!public!redirection! !
!ILSession categoriesFor: #redirectUrl!public!redirection! !
!ILSession categoriesFor: #redirectUrl:!public!redirection! !
!ILSession categoriesFor: #refreshOnBacktrack!accessing preferences!public! !
!ILSession categoriesFor: #refreshOnBacktrack:!accessing preferences!public! !
!ILSession categoriesFor: #registerAction:!actions!public! !
!ILSession categoriesFor: #registerActionFor:!actions!public! !
!ILSession categoriesFor: #route!accessing!public! !
!ILSession categoriesFor: #sessionManager!accessing!public! !
!ILSession categoriesFor: #setCreatedTimestamp!accessing timestamps!public! !
!ILSession categoriesFor: #setModifiedTimestamp!accessing timestamps!public! !
!ILSession categoriesFor: #setRandomId!private! !
!ILSession categoriesFor: #shouldUseSessionField!public!testing! !
!ILSession categoriesFor: #stateRegistries!public!states! !
!ILSession categoriesFor: #stateRegistry!accessing!public! !
!ILSession categoriesFor: #stateRegistryAt:!public!states! !
!ILSession categoriesFor: #timestampAt:!accessing timestamps!public! !
!ILSession categoriesFor: #timestampAt:ifAbsentPut:!accessing timestamps!public! !
!ILSession categoriesFor: #timestampAt:put:!accessing timestamps!public! !
!ILSession categoriesFor: #timestamps!accessing timestamps!public! !
!ILSession categoriesFor: #useCookies!accessing preferences!public! !
!ILSession categoriesFor: #useCookies:!accessing preferences!public! !

