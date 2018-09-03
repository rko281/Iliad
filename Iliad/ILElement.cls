"Filed out from Dolphin Smalltalk 7"!

ILComposite subclass: #ILElement
	instanceVariableNames: 'attributes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILElement guid: (GUID fromString: '{ac7ed702-ea1f-4fad-8c09-39848f0ddcda}')!
ILElement comment: 'I am the abstract root class of the composite element hierarchy.I know how to print myself in HTML format with the #printHtmlOn: method'!
!ILElement categoriesForClass!Iliad-Core-Elements! !
!ILElement methodsFor!

= anObject	(anObject isKindOf: ILElement)		ifFalse: [^ false].	anObject attributes size = self attributes size		ifFalse: [^ false].	self attributes associationsDo: [:each |		(anObject attributes at: each key ifAbsent: [^ false]) = each value			ifFalse: [^ false]].	^ true.!

afterPrintHtml!

attributeAt: akey	^self attributes at: akey ifAbsent: [nil]!

attributeAt: akey ifAbsent: aBlock	^self attributes at: akey ifAbsent: aBlock!

attributeAt: akey ifAbsentPut: aBlock	^self attributes at: akey ifAbsentPut: aBlock!

attributeAt: akey put: anObject 	^self attributes at: akey put: anObject!

attributeError: key 	ILAttributeError signal: key!

attributes	^attributes ifNil: [attributes := GRSmallDictionary new]!

beforePrintHtml!

build: aBuildable	aBuildable buildOn: self!

contentType	self subclassResponsibility!

doesNotUnderstandAttribute: aString	^(ILAttributeNotUnderstood		element: self		attribute: aString) signal!

hash	^super hash bitXor: self attributes hash!

printAttribute: anAttribute on: aStream	aStream		nextPut: Character space;		nextPutAll: anAttribute key;		nextPutAll: '="'.	anAttribute value printEncodedOn: aStream.	aStream nextPut: $"!

printCloseTagOn: aStream	self tag ifNotNil: [		aStream nextPutAll: '</', self tag, '>']	!

printHtmlOn: aStream	self beforePrintHtml.	self printOpenTagOn: aStream.	self childrenDo: [:each |		each printHtmlOn: aStream].	self printCloseTagOn: aStream.	self afterPrintHtml!

printJsonOn: aStream	| str |	str := WriteStream on: String new.	self printHtmlOn: str.	str contents printJsonOn: aStream!

printOpenTagOn: aStream	self tag		ifNotNil: [ :arg | 			aStream				nextPut: $<;				nextPutAll: self tag.			self attributes				associationsDo:					[ :each | each value ifNotNil: [ :arg | self printAttribute: each on: aStream ] ].			aStream nextPut: $> ]!

respondOn: aResponse	self printHtmlOn: aResponse.	aResponse contentType: self contentType!

tag	^ nil!

text: aString	^self add: (ILTextElement new		contents: aString;		yourself)!

xml	^self add: ILXmlElement new! !
!ILElement categoriesFor: #=!comparing!public! !
!ILElement categoriesFor: #afterPrintHtml!printing!public! !
!ILElement categoriesFor: #attributeAt:!accessing!public! !
!ILElement categoriesFor: #attributeAt:ifAbsent:!accessing!public! !
!ILElement categoriesFor: #attributeAt:ifAbsentPut:!accessing!public! !
!ILElement categoriesFor: #attributeAt:put:!accessing!public! !
!ILElement categoriesFor: #attributeError:!error handling!public! !
!ILElement categoriesFor: #attributes!accessing!public! !
!ILElement categoriesFor: #beforePrintHtml!printing!public! !
!ILElement categoriesFor: #build:!building!public! !
!ILElement categoriesFor: #contentType!accessing!public! !
!ILElement categoriesFor: #doesNotUnderstandAttribute:!error handling!public! !
!ILElement categoriesFor: #hash!comparing!public! !
!ILElement categoriesFor: #printAttribute:on:!printing!public! !
!ILElement categoriesFor: #printCloseTagOn:!printing!public! !
!ILElement categoriesFor: #printHtmlOn:!printing!public! !
!ILElement categoriesFor: #printJsonOn:!printing!public! !
!ILElement categoriesFor: #printOpenTagOn:!printing!public! !
!ILElement categoriesFor: #respondOn:!converting!public! !
!ILElement categoriesFor: #tag!accessing!public! !
!ILElement categoriesFor: #text:!adding/conveniance!public! !
!ILElement categoriesFor: #xml!adding/conveniance!public! !

