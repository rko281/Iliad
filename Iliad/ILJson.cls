﻿"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILJson
	instanceVariableNames: 'stream ctorMap'
	classVariableNames: 'CharacterEscapeMap'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILJson guid: (GUID fromString: '{cd0e8362-9d48-4866-bc3e-cef025c04430}')!
ILJson comment: 'This class reads and writes JSON format data - strings, numbers, boolean, nil, arrays and dictionaries. See http://www.crockford.com/JSON/index.html. It has been extended with syntax for invoking a prearranged list of constructors on read objects.'!
!ILJson categoriesForClass!Iliad-Core-lib-JSON! !
!ILJson methodsFor!

consume: aString returning: anObject

ctorMap

ctorMap: m

interpretStringEscape

next

peek

readAny

readArray

readConstructor

readDictionary

readFrom: aStream

readNumber

readString

skipComment

skipCommentBody

skipToEndOfLine

skipWhitespace

stream

stream: anObject
!ILJson categoriesFor: #consume:returning:!private! !
!ILJson categoriesFor: #ctorMap!accessing!public! !
!ILJson categoriesFor: #ctorMap:!accessing!public! !
!ILJson categoriesFor: #interpretStringEscape!private! !
!ILJson categoriesFor: #next!private! !
!ILJson categoriesFor: #peek!private! !
!ILJson categoriesFor: #readAny!parsing!public! !
!ILJson categoriesFor: #readArray!private! !
!ILJson categoriesFor: #readConstructor!private! !
!ILJson categoriesFor: #readDictionary!private! !
!ILJson categoriesFor: #readFrom:!parsing!public! !
!ILJson categoriesFor: #readNumber!private! !
!ILJson categoriesFor: #readString!private! !
!ILJson categoriesFor: #skipComment!private! !
!ILJson categoriesFor: #skipCommentBody!private! !
!ILJson categoriesFor: #skipToEndOfLine!private! !
!ILJson categoriesFor: #skipWhitespace!private! !
!ILJson categoriesFor: #stream!accessing!public! !
!ILJson categoriesFor: #stream:!accessing!public! !

!ILJson class methodsFor!

escapeForCharacter: c

initialize

mimeType

newWithConstructors: aCollection

numbersMayContain: aChar

readFrom: aStream

render: anObject

render: anObject withConstructor: aConstructorName on: aStream

renderInstanceVariables: aCollection of: anObject on: aStream
!ILJson class categoriesFor: #escapeForCharacter:!private! !
!ILJson class categoriesFor: #initialize!initialization!public! !
!ILJson class categoriesFor: #mimeType!private! !
!ILJson class categoriesFor: #newWithConstructors:!private! !
!ILJson class categoriesFor: #numbersMayContain:!private! !
!ILJson class categoriesFor: #readFrom:!objects from disk!public! !
!ILJson class categoriesFor: #render:!private! !
!ILJson class categoriesFor: #render:withConstructor:on:!private! !
!ILJson class categoriesFor: #renderInstanceVariables:of:on:!private! !
