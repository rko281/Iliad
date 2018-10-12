"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILHtmlElement
	instanceVariableNames: 'doctype xmlTag'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILHtmlElement guid: (GUID fromString: '{634775eb-4ae9-4819-bc6f-2ed69fd17dec}')!
ILHtmlElement comment: ''!
!ILHtmlElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILHtmlElement methodsFor!

beforePrintHtml	self attributeAt: 'lang' ifAbsentPut: [self language greaseString].	self hasXmlTag ifFalse: [^self].	self attributeAt: 'xmlns' ifAbsentPut: [self defaultXmlns].	self attributeAt: 'xml:lang' ifAbsentPut: [self language greaseString]!

beHtml5	self doctype: '<!!DOCTYPE html>'!

beXhtml10Strict	self setXmlTag.	self doctype: '<!!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'!

beXhtml10Transitional	self setXmlTag.	self doctype: '<!!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'!

beXhtml11	self setXmlTag.	self doctype: '<!!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">'!

beXhtml5	self doctype: '<!!DOCTYPE html>'!

defaultXmlns	^'http://www.w3.org/1999/xhtml'!

doctype	^doctype!

doctype: aString	doctype := aString !

hasXmlTag 	^self xmlTag notNil!

language	^self session 		ifNil: ['en']		ifNotNil: [self session language]!

onEvent: event add: aString 	self doesNotUnderstandAttribute: 'on', event!

printHtmlOn: aStream	" Private - See superimplementor's comment "	self doctype ifNil: [ self beXhtml10Strict ].	self hasXmlTag ifTrue: [		aStream nextPutAll: self xmlTag].	aStream nextPutAll: self doctype.	super printHtmlOn: aStream!

setXmlTag	self xmlTag: ('<?xml version="1.0" encoding="', self encoding,'"?>') !

tag	^'html'!

version: aNumber 	self attributeAt: 'version' put: aNumber greaseString!

xmlns	^self attributeAt: 'xmlns' !

xmlns: aString 	self attributeAt: 'xmlns' put: aString!

xmlTag	^xmlTag!

xmlTag: aString	xmlTag := aString! !
!ILHtmlElement categoriesFor: #beforePrintHtml!printing!public! !
!ILHtmlElement categoriesFor: #beHtml5!accessing!public! !
!ILHtmlElement categoriesFor: #beXhtml10Strict!accessing!public! !
!ILHtmlElement categoriesFor: #beXhtml10Transitional!accessing!public! !
!ILHtmlElement categoriesFor: #beXhtml11!accessing!public! !
!ILHtmlElement categoriesFor: #beXhtml5!accessing!public! !
!ILHtmlElement categoriesFor: #defaultXmlns!defaults!public! !
!ILHtmlElement categoriesFor: #doctype!accessing!public! !
!ILHtmlElement categoriesFor: #doctype:!accessing!public! !
!ILHtmlElement categoriesFor: #hasXmlTag!public!testing! !
!ILHtmlElement categoriesFor: #language!accessing!public! !
!ILHtmlElement categoriesFor: #onEvent:add:!accessing attributes/events!public! !
!ILHtmlElement categoriesFor: #printHtmlOn:!printing!public! !
!ILHtmlElement categoriesFor: #setXmlTag!accessing!public! !
!ILHtmlElement categoriesFor: #tag!accessing!public! !
!ILHtmlElement categoriesFor: #version:!accessing attributes!public! !
!ILHtmlElement categoriesFor: #xmlns!accessing attributes!public! !
!ILHtmlElement categoriesFor: #xmlns:!accessing attributes!public! !
!ILHtmlElement categoriesFor: #xmlTag!accessing!public! !
!ILHtmlElement categoriesFor: #xmlTag:!accessing!public! !

