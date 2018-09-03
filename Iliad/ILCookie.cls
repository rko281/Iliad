"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILCookie
	instanceVariableNames: 'expiry key path value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCookie guid: (GUID fromString: '{0c7ffc0d-c0f9-46c0-bc00-43a08a977878}')!
ILCookie comment: 'From Seaside 2.8I represent a cookie, a piece of information that is stored on the client and read and writable by the server. I am basically a key/value pair of strings.You can never trust information in a cookie, the client is free to edit it.I model only a part of the full cookie specification.For more information see  RFC2965 (http://tools.ietf.org/html/rfc2965)'!
!ILCookie categoriesForClass!Iliad-Core-lib-HTTP! !
!ILCookie methodsFor!

= other	^self species = other species		and: [self key = other key			and: [self path = other path]]!

expireIn: aDuration	self expiry: DateAndTime now + aDuration!

expiry	^expiry!

expiry: aDuration	expiry := aDuration!

expiryString	self expiry ifNil: [^''].	^(GRPrinter rfc822WithTimeZone: 'GMT') print: self expiry!

hash	^self key hash		bitXor: self path hash!

key	^key!

key: aString	key := aString!

path	^path ifNil: ['/']!

path: aString	path := aString!

value	^value!

value: aString	value := aString asString!

valueWithExpiry	^expiry		ifNil: [self value]		ifNotNil: [(self value ifNil: ['']), '; expires=', self expiryString]!

writeOn: aStream	aStream nextPutAll: self key; nextPut: $=; nextPutAll: (self value ifNil: ['']).	expiry isNil		ifFalse: [aStream nextPutAll: '; expires='; nextPutAll: self expiryString].	path isNil		ifFalse: [aStream nextPutAll: '; path='; nextPutAll: self path]! !
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

key: keyString value: valueString	^self new		key: keyString;		value: valueString;		yourself! !
!ILCookie class categoriesFor: #key:value:!instance creation!public! !

