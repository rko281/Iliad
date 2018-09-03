"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILResponse
	instanceVariableNames: 'contentType headers cookies status stream'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILResponse guid: (GUID fromString: '{1483bf1a-88b9-479d-ad9f-2d1699f26289}')!
ILResponse comment: 'From Seaside 2.8I am a server independent http response object.'!
!ILResponse categoriesForClass!Iliad-Core-lib-HTTP! !
!ILResponse methodsFor!

addCookie: aCookie	cookies ifNil: [cookies := Set new].	cookies add: aCookie!

allowResumedDownload	self headerAt: 'Accept-Ranges' put: 'bytes'!

attachmentWithFileName: aString	self headerAt: 'Content-disposition' put: 'attachment; filename="', aString, '"'!

authenticationFailed	self status: 401!

basicAuthenticationRealm: aString	self headerAt: 'WWW-Authenticate' put: ('Basic realm="',aString,'"').	self authenticationFailed!

contents	^stream contents!

contents: aStream	stream := aStream!

contentType	^contentType!

contentType: mimeTypeString	contentType := mimeTypeString!

cookieAt: key put: value	^self addCookie: (ILCookie key: key value: value)!

cookies	^cookies ifNil: [#()]!

forbidden	self status: 403!

headerAt: key put: value	headers ifNil: [headers := OrderedCollection new].	headers add: (Association key: key value: value).!

headers	^ headers ifNil: [#()]!

initialize	stream := ReadWriteStream on: String new.	status := '200'.	contentType := 'text/html; charset=utf-8'.!

internalError	self status: 500!

nextPut: aCharacter	stream nextPut: aCharacter!

nextPutAll: aString	stream nextPutAll: aString!

noContent	" 	Redirect user to new location?			NO	Request completed?					YES	User's view  will remain unchanged?		YES				Set no content return status	"	self status: 204	!

notFound	self status: 404!

ok	self status: 200!

print: anObject	self stream print: anObject!

printOn: aStream	super printOn: aStream.	aStream space; nextPutAll: self status greaseString!

redirect	self status: 302!

redirectTo: aString	self headerAt: 'Location' put: aString.	self redirect.!

release	stream := cookies := headers := nil!

setBinaryEncoding	self headerAt: 'Content-Transfer-Encoding' put: 'binary'!

space	stream space!

status	^status!

status: anInteger	status := anInteger!

stream	^stream!

stream: aStream	stream := aStream! !
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

forbidden	^self new forbidden!

noContent	" See instance side "	^ self new noContent!

notFound	^self new notFound!

ok	^self new ok!

redirect	^self new redirect! !
!ILResponse class categoriesFor: #forbidden!instance creation!public! !
!ILResponse class categoriesFor: #noContent!instance creation!public! !
!ILResponse class categoriesFor: #notFound!instance creation!public! !
!ILResponse class categoriesFor: #ok!instance creation!public! !
!ILResponse class categoriesFor: #redirect!instance creation!public! !

