﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILUrl
	instanceVariableNames: 'scheme username password hostname port path parameters fragment'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILUrl guid: (GUID fromString: '{e41a39ad-88e2-4059-92fc-b9cecd8dc09b}')!
ILUrl comment: 'I represent all portions of an URL as described by the RFC 1738. I include scheme, username, password, hostname, port, path, parameters, and fragment.
!ILUrl categoriesForClass!Iliad-Core-lib-HTTP! !
!ILUrl methodsFor!

, aString

= anUrl

addAllToPath: aCollectionOfStrings

addParameter: aString

addParameter: keyString value: valueString

addToPath: aString

asString

decode: aString

encodeParametersOn: aStream encoded: aBoolean usingHtmlEntities: anotherBoolean

fragment

fragment: aString

hash

hostname

hostname: aString

initialize

initializeFromString: aString

parameters

parseFragment: aString

parseHost: aString

parseParameters: aString

parsePath: aString

password

password: aString

path

path: aCollection

pathString

port

port: aNumber

postCopy

printEncodedOn: aStream

printFragmentOn: aStream encoded: aBoolean

printOn: aStream

printOn: aStream encoded: aBoolean

printOn: aStream encoded: aBoolean usingHtmlEntities: anotherBoolean

printParametersOn: aStream encoded: aBoolean usingHtmlEnities: anotherBoolean

printPathOn: aStream encoded: aBoolean

printServerOn: aStream encoded: aBoolean

relativeTo: anUrl

removeParameter: aString

removeParameters

scheme

scheme: aString

takeServerParametersFromRequest: aRequest

username

username: aString

with: pathString

withoutParameters

withParameter: aString

withParameter: aString value: valueString
!ILUrl categoriesFor: #,!basic!public! !
!ILUrl categoriesFor: #=!comparing!public! !
!ILUrl categoriesFor: #addAllToPath:!adding!public! !
!ILUrl categoriesFor: #addParameter:!adding!public! !
!ILUrl categoriesFor: #addParameter:value:!adding!public! !
!ILUrl categoriesFor: #addToPath:!adding!public! !
!ILUrl categoriesFor: #asString!converting!public! !
!ILUrl categoriesFor: #decode:!private! !
!ILUrl categoriesFor: #encodeParametersOn:encoded:usingHtmlEntities:!encoding!public! !
!ILUrl categoriesFor: #fragment!accessing!public! !
!ILUrl categoriesFor: #fragment:!accessing!public! !
!ILUrl categoriesFor: #hash!comparing!public! !
!ILUrl categoriesFor: #hostname!accessing!public! !
!ILUrl categoriesFor: #hostname:!accessing!public! !
!ILUrl categoriesFor: #initialize!initialization!public! !
!ILUrl categoriesFor: #initializeFromString:!initialization!public! !
!ILUrl categoriesFor: #parameters!accessing!public! !
!ILUrl categoriesFor: #parseFragment:!parsing!public! !
!ILUrl categoriesFor: #parseHost:!parsing!public! !
!ILUrl categoriesFor: #parseParameters:!parsing!public! !
!ILUrl categoriesFor: #parsePath:!parsing!public! !
!ILUrl categoriesFor: #password!accessing!public! !
!ILUrl categoriesFor: #password:!accessing!public! !
!ILUrl categoriesFor: #path!accessing!public! !
!ILUrl categoriesFor: #path:!accessing!public! !
!ILUrl categoriesFor: #pathString!converting!public! !
!ILUrl categoriesFor: #port!accessing!public! !
!ILUrl categoriesFor: #port:!accessing!public! !
!ILUrl categoriesFor: #postCopy!copying!public! !
!ILUrl categoriesFor: #printEncodedOn:!printing!public! !
!ILUrl categoriesFor: #printFragmentOn:encoded:!encoding!public! !
!ILUrl categoriesFor: #printOn:!printing!public! !
!ILUrl categoriesFor: #printOn:encoded:!printing!public! !
!ILUrl categoriesFor: #printOn:encoded:usingHtmlEntities:!encoding!public! !
!ILUrl categoriesFor: #printParametersOn:encoded:usingHtmlEnities:!encoding!public! !
!ILUrl categoriesFor: #printPathOn:encoded:!encoding!public! !
!ILUrl categoriesFor: #printServerOn:encoded:!encoding!public! !
!ILUrl categoriesFor: #relativeTo:!converting!public! !
!ILUrl categoriesFor: #removeParameter:!public!removing! !
!ILUrl categoriesFor: #removeParameters!private! !
!ILUrl categoriesFor: #scheme!accessing!public! !
!ILUrl categoriesFor: #scheme:!accessing!public! !
!ILUrl categoriesFor: #takeServerParametersFromRequest:!private! !
!ILUrl categoriesFor: #username!accessing!public! !
!ILUrl categoriesFor: #username:!accessing!public! !
!ILUrl categoriesFor: #with:!copying!public! !
!ILUrl categoriesFor: #withoutParameters!copying!public! !
!ILUrl categoriesFor: #withParameter:!copying!public! !
!ILUrl categoriesFor: #withParameter:value:!copying!public! !

!ILUrl class methodsFor!

absolute: aString

absolute: aString relative: aRelativeString

decodePercent: aString

new
!ILUrl class categoriesFor: #absolute:!parsing!public! !
!ILUrl class categoriesFor: #absolute:relative:!parsing!public! !
!ILUrl class categoriesFor: #decodePercent:!decoding!public! !
!ILUrl class categoriesFor: #new!instance creation!public! !
