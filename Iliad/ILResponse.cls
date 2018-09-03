﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILResponse
	instanceVariableNames: 'contentType headers cookies status stream'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILResponse guid: (GUID fromString: '{1483bf1a-88b9-479d-ad9f-2d1699f26289}')!
ILResponse comment: 'From Seaside 2.8
!ILResponse categoriesForClass!Iliad-Core-lib-HTTP! !
!ILResponse methodsFor!

addCookie: aCookie

allowResumedDownload

attachmentWithFileName: aString

authenticationFailed

basicAuthenticationRealm: aString

contents

contents: aStream

contentType

contentType: mimeTypeString

cookieAt: key put: value

cookies

forbidden

headerAt: key put: value

headers

initialize

internalError

nextPut: aCharacter

nextPutAll: aString

noContent

notFound

ok

print: anObject

printOn: aStream

redirect

redirectTo: aString

release

setBinaryEncoding

space

status

status: anInteger

stream

stream: aStream
!ILResponse categoriesFor: #addCookie:!accessing!public! !
!ILResponse categoriesFor: #allowResumedDownload!convenience!public! !
!ILResponse categoriesFor: #attachmentWithFileName:!convenience!public! !
!ILResponse categoriesFor: #authenticationFailed!public!status! !
!ILResponse categoriesFor: #basicAuthenticationRealm:!convenience!public! !
!ILResponse categoriesFor: #contents!accessing!public! !
!ILResponse categoriesFor: #contents:!accessing!public! !
!ILResponse categoriesFor: #contentType!accessing!public! !
!ILResponse categoriesFor: #contentType:!accessing!public! !
!ILResponse categoriesFor: #cookieAt:put:!accessing!public! !
!ILResponse categoriesFor: #cookies!accessing!public! !
!ILResponse categoriesFor: #forbidden!public!status! !
!ILResponse categoriesFor: #headerAt:put:!accessing!public! !
!ILResponse categoriesFor: #headers!accessing!public! !
!ILResponse categoriesFor: #initialize!accessing!public! !
!ILResponse categoriesFor: #internalError!public!status! !
!ILResponse categoriesFor: #nextPut:!public!streaming! !
!ILResponse categoriesFor: #nextPutAll:!public!streaming! !
!ILResponse categoriesFor: #noContent!public!status! !
!ILResponse categoriesFor: #notFound!public!status! !
!ILResponse categoriesFor: #ok!public!status! !
!ILResponse categoriesFor: #print:!public!streaming! !
!ILResponse categoriesFor: #printOn:!printing!public! !
!ILResponse categoriesFor: #redirect!public!status! !
!ILResponse categoriesFor: #redirectTo:!convenience!public! !
!ILResponse categoriesFor: #release!accessing!public! !
!ILResponse categoriesFor: #setBinaryEncoding!convenience!public! !
!ILResponse categoriesFor: #space!public!streaming! !
!ILResponse categoriesFor: #status!accessing!public! !
!ILResponse categoriesFor: #status:!accessing!public! !
!ILResponse categoriesFor: #stream!accessing!public! !
!ILResponse categoriesFor: #stream:!accessing!public! !

!ILResponse class methodsFor!

forbidden

noContent

notFound

ok

redirect
!ILResponse class categoriesFor: #forbidden!instance creation!public! !
!ILResponse class categoriesFor: #noContent!instance creation!public! !
!ILResponse class categoriesFor: #notFound!instance creation!public! !
!ILResponse class categoriesFor: #ok!instance creation!public! !
!ILResponse class categoriesFor: #redirect!instance creation!public! !
