"Filed out from Dolphin Smalltalk 7"!

ILRSSElement subclass: #ILRSSEnclosureElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSEnclosureElement guid: (GUID fromString: '{23fa2c76-ad6c-4d0b-b6f3-e0710e5531d6}')!
ILRSSEnclosureElement comment: ''!
!ILRSSEnclosureElement categoriesForClass!Iliad-More-RSS! !
!ILRSSEnclosureElement methodsFor!

length: anInteger	self attributeAt: 'length' put: anInteger greaseString!

tag	^'enclosure'!

type: aString 	self attributeAt: 'type' put: aString!

url: anUrl 	self attributeAt: 'url' put: anUrl! !
!ILRSSEnclosureElement categoriesFor: #length:!accessing attributes!public! !
!ILRSSEnclosureElement categoriesFor: #tag!accessing!public! !
!ILRSSEnclosureElement categoriesFor: #type:!accessing attributes!public! !
!ILRSSEnclosureElement categoriesFor: #url:!accessing!public! !

