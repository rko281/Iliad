﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILRequest
	instanceVariableNames: 'url fields headers cookies method nativeRequest'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRequest guid: (GUID fromString: '{dfc30193-f23b-4da5-adc7-634f79b4432f}')!
ILRequest comment: 'From Seaside 2.8
!ILRequest categoriesForClass!Iliad-Core-lib-HTTP! !
!ILRequest methodsFor!

actionField

ajaxUploadField

at: key

at: key ifAbsent: aBlock

authorization

cookies

cookies: anObject

decodeAuthorization: aString

fields

fields: anObject

hasCookies

hashLocationField

headerAt: aKey

headerAt: aKey ifAbsent: aBlock

headers

headers: aDictionary

initialize

isAjaxRequest

isGet

isPost

isPrefetch

isPut

isTypeOfRequestForJson

isTypeOfRequestForRedirect

jsonField

method

method: aString

nativeRequest

nativeRequest: aRequest

password

sessionField

setMethod: methodString url: urlString headers: headDict fields: fieldDict cookies: cookieDict

stateField

url

url: anUrl

user

userAgent 
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
