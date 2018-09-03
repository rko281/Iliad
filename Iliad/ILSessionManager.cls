"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILSessionManager
	instanceVariableNames: 'sessions preferences expirationProcess'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'current'!
ILSessionManager guid: (GUID fromString: '{f30f0942-5379-4f24-b4b3-74f8e187e06f}')!
ILSessionManager comment: 'I am responsible for managing, creating and removing sessions.The class method #current answers my only instance.You shouldn''t subclass me. Instead, you can change my preferences with methods in the <accessing preferences>'' protocol.In addition, do not try to access the current session from here, use ILContext>>session instead.-- maintenance --To remove all sessions, even not expired ones, call #removeAllSessions.To remove all expired sessions, call #removeExpiredSessions'!
!ILSessionManager categoriesForClass!Iliad-Core-Sessions! !
!ILSessionManager methodsFor!

addSession: aSession	sessions at: aSession id greaseString put: aSession!

cookieName	^self preferenceAt: #cookieName ifAbsentPut: ['_iliad685744']!

cookieName: aString	^self preferenceAt: #cookieName put: aString!

defaultSessionExpirationDelay 	^ 5 minutes asSeconds!

findOrMakeSessionFor: aRequest	"Answer a valid session for <aRequest>.	Create a new session if no session is found"		| session id |	id := self sessionIdFromRequest: aRequest.	session := sessions at: id ifAbsent: [^self newSession].	session setModifiedTimestamp.	^session!

hasSession: aSession	^sessions values includes: aSession!

initialize	super initialize.	sessions := Dictionary new.	self startSessionExpirationProcess !

newSession	| session | 	session := self sessionClass new.	self addSession: session.	^session!

preferenceAt: aSymbol	^self preferences at: aSymbol ifAbsent: [nil]!

preferenceAt: aSymbol ifAbsentPut: aBlock	^self preferences at: aSymbol ifAbsentPut: aBlock!

preferenceAt: aSymbol put: anObject	^self preferences at: aSymbol put: anObject !

preferences	^preferences ifNil: [preferences := Dictionary new]!

removeAllSessions	"Remove all sessions. Use for maintenance"		sessions := Dictionary new!

removeExpiredSessions	"Remove all expired sessions"		self sessions do: [:each | each checkExpired]!

removeSession: aSession	sessions 		removeKey: aSession id greaseString		ifAbsent: []!

sessionClass	^self preferenceAt: #sessionClass ifAbsentPut: [ILSession]!

sessionClass: aSessionClass	^self preferences at: #sessionClass put: aSessionClass!

sessionExpirationDelay	^self 		preferenceAt: #sessionExpirationDelay 		ifAbsentPut: [self defaultSessionExpirationDelay]!

sessionExpirationLoop	^[		(Delay forSeconds: self sessionExpirationDelay) wait.		self removeExpiredSessions	]!

sessionFor: aRequest	"Answer the according session for <aRequest>.	the session id may be found from <aRequest> cookies or <aRequest> fields.	If no session is found, create and return a new one"	^self findOrMakeSessionFor: aRequest!

sessionIdFromCookies: cookies	cookies ifNil: [^nil].	^cookies at: self cookieName ifAbsent: [nil]!

sessionIdFromRequest: aRequest	^aRequest sessionField ifNil: [		self sessionIdFromCookies: aRequest cookies]!

sessions	^sessions values!

sessionsDo: aBlock	sessions valuesDo: aBlock!

startSessionExpirationProcess	expirationProcess ifNil: [		expirationProcess := [self sessionExpirationLoop repeat] 			forkAt: Processor lowestPriority			named: 'Iliad session management']!

stopSessionExpirationProcess	expirationProcess ifNotNil: [		expirationProcess terminate. expirationProcess := nil]! !
!ILSessionManager categoriesFor: #addSession:!adding/removing!public! !
!ILSessionManager categoriesFor: #cookieName!accessing preferences!public! !
!ILSessionManager categoriesFor: #cookieName:!accessing preferences!public! !
!ILSessionManager categoriesFor: #defaultSessionExpirationDelay!defaults!public! !
!ILSessionManager categoriesFor: #findOrMakeSessionFor:!private! !
!ILSessionManager categoriesFor: #hasSession:!public!testing! !
!ILSessionManager categoriesFor: #initialize!initialization!public! !
!ILSessionManager categoriesFor: #newSession!private! !
!ILSessionManager categoriesFor: #preferenceAt:!accessing preferences!public! !
!ILSessionManager categoriesFor: #preferenceAt:ifAbsentPut:!accessing preferences!public! !
!ILSessionManager categoriesFor: #preferenceAt:put:!accessing preferences!public! !
!ILSessionManager categoriesFor: #preferences!accessing preferences!public! !
!ILSessionManager categoriesFor: #removeAllSessions!private! !
!ILSessionManager categoriesFor: #removeExpiredSessions!private! !
!ILSessionManager categoriesFor: #removeSession:!adding/removing!public! !
!ILSessionManager categoriesFor: #sessionClass!accessing preferences!public! !
!ILSessionManager categoriesFor: #sessionClass:!accessing preferences!public! !
!ILSessionManager categoriesFor: #sessionExpirationDelay!accessing preferences!public! !
!ILSessionManager categoriesFor: #sessionExpirationLoop!private! !
!ILSessionManager categoriesFor: #sessionFor:!adding/removing!public! !
!ILSessionManager categoriesFor: #sessionIdFromCookies:!private! !
!ILSessionManager categoriesFor: #sessionIdFromRequest:!private! !
!ILSessionManager categoriesFor: #sessions!accessing!public! !
!ILSessionManager categoriesFor: #sessionsDo:!enumerating!public! !
!ILSessionManager categoriesFor: #startSessionExpirationProcess!private! !
!ILSessionManager categoriesFor: #stopSessionExpirationProcess!private! !

!ILSessionManager class methodsFor!

current	^current ifNil: [current := super new]!

initialize	Smalltalk addToStartUpList: self.	self startUp!

new	self shouldNotImplement!

startUp	self current 		stopSessionExpirationProcess;		startSessionExpirationProcess ! !
!ILSessionManager class categoriesFor: #current!instance creation!public! !
!ILSessionManager class categoriesFor: #initialize!class initialization!public! !
!ILSessionManager class categoriesFor: #new!instance creation!public! !
!ILSessionManager class categoriesFor: #startUp!initialization!public! !

