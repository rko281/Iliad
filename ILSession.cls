﻿"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILSession
	instanceVariableNames: 'id preferences others timestamps expired redirectUrl applications actionRegistry stateRegistries nextId'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILSession guid: (GUID fromString: '{126336d0-7af2-4eac-b648-171e287b9ac6}')!
ILSession comment: 'I represent a session in Iliad. I persist as long as I am active (i.e. an user interacts with an application). When I am inactive, I expire after a timeout set by #expirySeconds. I also store actions and applications.'!
!ILSession categoriesForClass!Iliad-Core-Sessions! !
!ILSession methodsFor!

actionAt: aKeyString

actionFor: aBlock

actionRegistry

applications

charset

charset: aString

checkExpired

clearActionRegistry

clearRedirectUrl

clearStateRegistries

createdTimestamp

defaultExpirySeconds

defaultLanguage

dirtyWidgets

encoding

evaluateActionKey: aString

expire

expirySeconds

expirySeconds: anInteger

id

id: anObject

initialize

isExpired

language

language: aSymbol

modifiedTimestamp

newStateRegistry

nextId

onExpire 

otherAt: aKey

otherAt: aKey ifAbsentPut: aBlock

otherAt: aKey put: anObject

others

preferenceAt: aSymbol

preferenceAt: aSymbol ifAbsentPut: aBlock

preferenceAt: aSymbol put: anObject

preferences

previousStateRegistry 

redirect

redirectTo: anUrlString

redirectToIndex

redirectToLocal: anUrlString

redirectUrl

redirectUrl: aString

refreshOnBacktrack

refreshOnBacktrack: aBoolean

registerAction: anAction

registerActionFor: aBlock

route

sessionManager

setCreatedTimestamp

setModifiedTimestamp

setRandomId

shouldUseSessionField

stateRegistries

stateRegistry

stateRegistryAt: aString

timestampAt: aSymbol

timestampAt: aSymbol ifAbsentPut: aBlock

timestampAt: aSymbol put: anObject

timestamps

useCookies

useCookies: aBoolean
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
