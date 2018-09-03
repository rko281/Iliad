"Filed out from Dolphin Smalltalk 7"!

ILRSSElement subclass: #ILRSSRssElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSRssElement guid: (GUID fromString: '{15dff86b-ed1c-4981-880c-225534edac41}')!
ILRSSRssElement comment: ''!
!ILRSSRssElement categoriesForClass!Iliad-More-RSS! !
!ILRSSRssElement methodsFor!

beforePrintHtml	self version ifNil: [		self version: 2.0]!

blogChannel: aString	self attributeAt: 'xmlns:blogChannel' put: aString	!

printHtmlOn: aStream	" Private - See superimplementor's comment "	aStream nextPutAll: self xmlTag.	super printHtmlOn: aStream!

tag	^'rss'!

version	^self attributeAt: 'version'!

version: aNumber	self attributeAt: 'version' put: aNumber greaseString!

xmlns: aString	self attributeAt: 'xmlns' put: aString!

xmlTag	^'<?xml version="1.0"?>'! !
!ILRSSRssElement categoriesFor: #beforePrintHtml!printing!public! !
!ILRSSRssElement categoriesFor: #blogChannel:!accessing attributes!public! !
!ILRSSRssElement categoriesFor: #printHtmlOn:!printing!public! !
!ILRSSRssElement categoriesFor: #tag!accessing!public! !
!ILRSSRssElement categoriesFor: #version!accessing attributes!public! !
!ILRSSRssElement categoriesFor: #version:!accessing attributes!public! !
!ILRSSRssElement categoriesFor: #xmlns:!accessing attributes!public! !
!ILRSSRssElement categoriesFor: #xmlTag!accessing!public! !

