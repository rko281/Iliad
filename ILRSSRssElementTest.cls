"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILRSSRssElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSRssElementTest guid: (GUID fromString: '{684de9c5-87cd-4590-a029-caa2c8a3d8c4}')!
ILRSSRssElementTest comment: ''!
!ILRSSRssElementTest categoriesForClass!Iliad-Tests-RSS! !
!ILRSSRssElementTest methodsFor!

setUp	e := ILRSSRssElement new!

testBlogChannel	e blogChannel: 'foo'.	self shouldHaveAttribute: 'xmlns:blogChannel' value: 'foo'!

testTag	self assert: e tag equals: 'rss'!

testVersion	e version: 1.	self shouldHaveAttribute: 'version' value: '1'!

testXmlns	e xmlns: 'foo'.	self shouldHaveAttribute: 'xmlns' value: 'foo'!

testXmlTag	| xmlTag |	xmlTag := e xmlTag.	self assert: xmlTag equals: '<?xml version="1.0"?>'! !
!ILRSSRssElementTest categoriesFor: #setUp!public!running! !
!ILRSSRssElementTest categoriesFor: #testBlogChannel!public!testing! !
!ILRSSRssElementTest categoriesFor: #testTag!public!testing! !
!ILRSSRssElementTest categoriesFor: #testVersion!public!testing! !
!ILRSSRssElementTest categoriesFor: #testXmlns!public!testing! !
!ILRSSRssElementTest categoriesFor: #testXmlTag!public!testing! !

