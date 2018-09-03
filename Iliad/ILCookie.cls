﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILCookie
	instanceVariableNames: 'expiry key path value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCookie guid: (GUID fromString: '{0c7ffc0d-c0f9-46c0-bc00-43a08a977878}')!
ILCookie comment: 'From Seaside 2.8
!ILCookie categoriesForClass!Iliad-Core-lib-HTTP! !
!ILCookie methodsFor!

= other

expireIn: aDuration

expiry

expiry: aDuration

expiryString

hash

key

key: aString

path

path: aString

value

value: aString

valueWithExpiry

writeOn: aStream
!ILCookie categoriesFor: #=!comparing!public! !
!ILCookie categoriesFor: #expireIn:!api!public! !
!ILCookie categoriesFor: #expiry!accessing!public! !
!ILCookie categoriesFor: #expiry:!accessing!public! !
!ILCookie categoriesFor: #expiryString!private! !
!ILCookie categoriesFor: #hash!comparing!public! !
!ILCookie categoriesFor: #key!accessing!public! !
!ILCookie categoriesFor: #key:!accessing!public! !
!ILCookie categoriesFor: #path!accessing!public! !
!ILCookie categoriesFor: #path:!accessing!public! !
!ILCookie categoriesFor: #value!accessing!public! !
!ILCookie categoriesFor: #value:!accessing!public! !
!ILCookie categoriesFor: #valueWithExpiry!api!public! !
!ILCookie categoriesFor: #writeOn:!public!writing! !

!ILCookie class methodsFor!

key: keyString value: valueString
!ILCookie class categoriesFor: #key:value:!instance creation!public! !
