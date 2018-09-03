﻿"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILSessionManager
	instanceVariableNames: 'sessions preferences expirationProcess'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'current'!
ILSessionManager guid: (GUID fromString: '{f30f0942-5379-4f24-b4b3-74f8e187e06f}')!
ILSessionManager comment: 'I am responsible for managing, creating and removing sessions.
!ILSessionManager categoriesForClass!Iliad-Core-Sessions! !
!ILSessionManager methodsFor!

addSession: aSession

cookieName

cookieName: aString

defaultSessionExpirationDelay 

findOrMakeSessionFor: aRequest

hasSession: aSession

initialize

newSession

preferenceAt: aSymbol

preferenceAt: aSymbol ifAbsentPut: aBlock

preferenceAt: aSymbol put: anObject

preferences

removeAllSessions

removeExpiredSessions

removeSession: aSession

sessionClass

sessionClass: aSessionClass

sessionExpirationDelay

sessionExpirationLoop

sessionFor: aRequest

sessionIdFromCookies: cookies

sessionIdFromRequest: aRequest

sessions

sessionsDo: aBlock

startSessionExpirationProcess

stopSessionExpirationProcess
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

current

initialize

new

startUp
!ILSessionManager class categoriesFor: #current!instance creation!public! !
!ILSessionManager class categoriesFor: #initialize!class initialization!public! !
!ILSessionManager class categoriesFor: #new!instance creation!public! !
!ILSessionManager class categoriesFor: #startUp!initialization!public! !
