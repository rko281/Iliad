"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILEncoder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILEncoder guid: (GUID fromString: '{5291982a-fa7f-47c9-9fdb-c3b4069542cb}')!
ILEncoder comment: ''!
!ILEncoder categoriesForClass!Iliad-Core-Utilities! !
!ILEncoder class methodsFor!

encodeCharacterForHTTP: aCharacter on: aStream	aCharacter = $" ifTrue: [^aStream nextPutAll: '&quot;'].	aCharacter = $< ifTrue: [^aStream nextPutAll: '&lt;'].	aCharacter = $& ifTrue: [^aStream nextPutAll: '&amp;'].	aCharacter = $> ifTrue: [^aStream nextPutAll: '&gt;'].	aStream nextPut: aCharacter!

encodeForHTTP: aString on: aStream	aString do: [:char |		self encodeCharacterForHTTP: char on: aStream]!

encodeUrl: aString on: aStream	aString do: [:char |		self encodeUrlCharacter: char on: aStream]!

encodeUrlCharacter: aCharacter on: aStream	| value |	('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_."' includes: aCharacter)		ifTrue: [^aStream nextPut: aCharacter].	value := aCharacter asInteger.	aStream nextPut: $%.	aStream nextPutAll: ((value radix: 16) copyFrom: 4)!

printUrl: aString encoded: aBoolean on: aStream	aBoolean 		ifTrue: [self encodeUrl: aString on: aStream]		ifFalse: [aStream nextPutAll: aString]! !
!ILEncoder class categoriesFor: #encodeCharacterForHTTP:on:!encoding!public! !
!ILEncoder class categoriesFor: #encodeForHTTP:on:!encoding!public! !
!ILEncoder class categoriesFor: #encodeUrl:on:!encoding!public! !
!ILEncoder class categoriesFor: #encodeUrlCharacter:on:!encoding!public! !
!ILEncoder class categoriesFor: #printUrl:encoded:on:!encoding!public! !

