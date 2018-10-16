"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILRequest
	instanceVariableNames: 'url fields headers cookies method nativeRequest'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRequest guid: (GUID fromString: '{dfc30193-f23b-4da5-adc7-634f79b4432f}')!
ILRequest comment: 'From Seaside 2.8I am a server independent http request object.'!
!ILRequest categoriesForClass!Iliad-Core-lib-HTTP! !
!ILRequest methodsFor!

actionField	^self 		at: ILUrlBuilder actionKey 		ifAbsent: [nil]!

ajaxUploadField	^self 		at: ILUrlBuilder ajaxUploadKey		ifAbsent: [nil]!

at: key	^fields at: key!

at: key ifAbsent: aBlock	^fields at: key ifAbsent: aBlock!

authorization	^(self headerAt: 'Authorization' ifAbsent: [self headerAt: 'authorization'])		ifNotNilDo: [:auth | self decodeAuthorization: auth]!

cookies	^cookies!

cookies: anObject	cookies := anObject!

decodeAuthorization: aString	^GRPlatform current base64Decode: (aString findTokens: ' ') last!

fields	^fields!

fields: anObject	fields := anObject!

hasCookies	^self cookies notNil and: [self cookies notEmpty]  !

hashLocationField	^self 		at: ILUrlBuilder hashKey 		ifAbsent: [nil]!

headerAt: aKey	^self headerAt: aKey ifAbsent: []!

headerAt: aKey ifAbsent: aBlock	^headers at: aKey ifAbsent: aBlock!

headers	^headers!

headers: aDictionary	headers := aDictionary!

initialize	headers := Dictionary new.	fields := Dictionary new.	cookies := Dictionary new!

isAjaxRequest	^(self headerAt: 'x-requested-with') = 'XMLHttpRequest'!

isGet	^self method asUppercase = 'GET'!

isPost	^self method asUppercase = 'POST'!

isPrefetch	^(self headerAt: 'HTTP_X_MOZ') = 'prefetch'!

isPut	^self method asUppercase = 'PUT'!

isTypeOfRequestForJson	^'*application/json*' match: (self headerAt: 'accept' ifAbsent: [''])!

isTypeOfRequestForRedirect	^self isPost or: [		self actionField notNil]!

jsonField	^self		at: ILUrlBuilder jsonKey		ifAbsent: [nil]!

method	^method!

method: aString	method := aString!

nativeRequest	^nativeRequest!

nativeRequest: aRequest	nativeRequest := aRequest!

password	^self authorization ifNotNilDo: [:auth | auth copyAfter: $:]!

sessionField	^self 		at: ILUrlBuilder sessionKey 		ifAbsent: [nil]!

setMethod: methodString url: urlString headers: headDict fields: fieldDict cookies: cookieDict	method := methodString.	url := urlString.	headers := headDict.	fields := fieldDict.	cookies := cookieDict!

stateField	^self		at: ILUrlBuilder stateKey		ifAbsent: [nil]!

url	^url!

url: anUrl	url := anUrl!

user	^self authorization ifNotNilDo: [:auth | auth copyUpTo: $:]!

userAgent 	^self headerAt: 'user-agent'! !
!ILRequest categoriesFor: #actionField!accessing!public! !
!ILRequest categoriesFor: #ajaxUploadField!accessing!public! !
!ILRequest categoriesFor: #at:!accessing!public! !
!ILRequest categoriesFor: #at:ifAbsent:!accessing!public! !
!ILRequest categoriesFor: #authorization!private! !
!ILRequest categoriesFor: #cookies!accessing!public! !
!ILRequest categoriesFor: #cookies:!accessing!public! !
!ILRequest categoriesFor: #decodeAuthorization:!private! !
!ILRequest categoriesFor: #fields!accessing!public! !
!ILRequest categoriesFor: #fields:!accessing!public! !
!ILRequest categoriesFor: #hasCookies!public!testing! !
!ILRequest categoriesFor: #hashLocationField!accessing!public! !
!ILRequest categoriesFor: #headerAt:!accessing!public! !
!ILRequest categoriesFor: #headerAt:ifAbsent:!accessing!public! !
!ILRequest categoriesFor: #headers!accessing!public! !
!ILRequest categoriesFor: #headers:!accessing!public! !
!ILRequest categoriesFor: #initialize!initialization!public! !
!ILRequest categoriesFor: #isAjaxRequest!public!testing! !
!ILRequest categoriesFor: #isGet!public!testing! !
!ILRequest categoriesFor: #isPost!public!testing! !
!ILRequest categoriesFor: #isPrefetch!public!testing! !
!ILRequest categoriesFor: #isPut!public!testing! !
!ILRequest categoriesFor: #isTypeOfRequestForJson!public!testing! !
!ILRequest categoriesFor: #isTypeOfRequestForRedirect!public!testing! !
!ILRequest categoriesFor: #jsonField!accessing!public! !
!ILRequest categoriesFor: #method!accessing!public! !
!ILRequest categoriesFor: #method:!accessing!public! !
!ILRequest categoriesFor: #nativeRequest!accessing!public! !
!ILRequest categoriesFor: #nativeRequest:!accessing!public! !
!ILRequest categoriesFor: #password!accessing!public! !
!ILRequest categoriesFor: #sessionField!accessing!public! !
!ILRequest categoriesFor: #setMethod:url:headers:fields:cookies:!private! !
!ILRequest categoriesFor: #stateField!accessing!public! !
!ILRequest categoriesFor: #url!accessing!public! !
!ILRequest categoriesFor: #url:!accessing!public! !
!ILRequest categoriesFor: #user!accessing!public! !
!ILRequest categoriesFor: #userAgent!accessing!public! !

