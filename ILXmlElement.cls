"Filed out from Dolphin Smalltalk 7"!

ILElement subclass: #ILXmlElement
	instanceVariableNames: 'tag'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILXmlElement guid: (GUID fromString: '{0ec8101d-4939-4c86-b3f9-a011fa7e778c}')!
ILXmlElement comment: ''!
!ILXmlElement categoriesForClass!Iliad-Core-Elements! !
!ILXmlElement methodsFor!

contentType	^'text/xml; charset=', self session charset!

respondOn: aResponse	aResponse nextPutAll: self xmlTag.	super respondOn: aResponse!

tag	^tag!

tag: aString	tag := aString!

xmlTag	^'<?xml version= "1.0" encoding="', self session encoding, '"?>'! !
!ILXmlElement categoriesFor: #contentType!accessing!public! !
!ILXmlElement categoriesFor: #respondOn:!converting!public! !
!ILXmlElement categoriesFor: #tag!accessing!public! !
!ILXmlElement categoriesFor: #tag:!accessing!public! !
!ILXmlElement categoriesFor: #xmlTag!accessing!public! !

