"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILJsonObject
	instanceVariableNames: 'properties'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILJsonObject guid: (GUID fromString: '{8fac471d-569a-437b-bef4-918380a3eb5a}')!
ILJsonObject comment: ''!
!ILJsonObject categoriesForClass!Iliad-Core-lib-JSON! !
!ILJsonObject methodsFor!

at: key	^self at: key ifAbsent: [nil]!

at: key ifAbsent: aBlock	^(properties detect: [:ea | ea key = key] ifNone: [^aBlock value]) value!

at: key put: value	properties add: key -> value!

doesNotUnderstand: aMessage	| key |	key := aMessage selector.	key isUnary ifTrue: [^ self at: key ifAbsent: [super doesNotUnderstand: aMessage]].	^ (key isKeyword and: [(key occurrencesOf: $:) = 1])		ifTrue: [key := key allButLast asSymbol.				self at: key put: aMessage arguments first]		ifFalse: [super doesNotUnderstand: aMessage]!

initialize	properties := OrderedCollection new!

printJsonOn: aStream	aStream nextPut: ${.	properties 		do: [:ea | 			ea key greaseString printJsonOn: aStream.			aStream nextPutAll: ': '.			ea value printJsonOn: aStream]		separatedBy: [aStream nextPutAll: ', '].	aStream nextPut: $}.!

properties	^properties! !
!ILJsonObject categoriesFor: #at:!accessing!public! !
!ILJsonObject categoriesFor: #at:ifAbsent:!accessing!public! !
!ILJsonObject categoriesFor: #at:put:!accessing!public! !
!ILJsonObject categoriesFor: #doesNotUnderstand:!error handling!public! !
!ILJsonObject categoriesFor: #initialize!initialization!public! !
!ILJsonObject categoriesFor: #printJsonOn:!printing!public! !
!ILJsonObject categoriesFor: #properties!accessing!public! !

