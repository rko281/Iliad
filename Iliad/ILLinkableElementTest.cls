"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILLinkableElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILLinkableElementTest guid: (GUID fromString: '{8762fc6a-b3e8-4030-9dbd-7cab8d2ad098}')!
ILLinkableElementTest comment: ''!
!ILLinkableElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILLinkableElementTest methodsFor!

setUp	e := ILLinkableElement new!

testAttributes	e beNext.	self shouldHaveAttribute: 'rel' value: 'Next'.	e beChapter.	self shouldHaveAttribute: 'rel' value: 'Chapter'.	e beStart.	self shouldHaveAttribute: 'rel' value: 'Start'.	e fromContents.	self shouldHaveAttribute: 'rev' value: 'Contents'.	e beIndex.	self shouldHaveAttribute: 'rel' value: 'Index'.	e fromPrevious.	self shouldHaveAttribute: 'rev' value: 'Prev'.	e fromHelp.	self shouldHaveAttribute: 'rev' value: 'Help'.	e beBookmark.	self shouldHaveAttribute: 'rel' value: 'Bookmark'.	e fromIndex.	self shouldHaveAttribute: 'rev' value: 'Index'.	e beGlossary.	self shouldHaveAttribute: 'rel' value: 'Glossary'.	e fromAlternate.	self shouldHaveAttribute: 'rev' value: 'Alternate'.	e fromStylesheet.	self shouldHaveAttribute: 'rev' value: 'Stylesheet'.		e beHelp.	self shouldHaveAttribute: 'rel' value: 'Help'.	e beAppendix.	self shouldHaveAttribute: 'rel' value: 'Appendix'.	e fromAppendix.	self shouldHaveAttribute: 'rev' value: 'Appendix'.	e fromNext.	self shouldHaveAttribute: 'rev' value: 'Next'.	e bePrev.	self shouldHaveAttribute: 'rel' value: 'Prev'.	e fromChapter.	self shouldHaveAttribute: 'rev' value: 'Chapter'.	e beSubsection.	self shouldHaveAttribute: 'rel' value: 'Subsection'.	e beCopyright.	self shouldHaveAttribute: 'rel' value: 'Copyright'.	e beAlternate.	self shouldHaveAttribute: 'rel' value: 'Alternate'.	e fromBookmark.	self shouldHaveAttribute: 'rev' value: 'Bookmark'.	e bePrevious.	self shouldHaveAttribute: 'rel' value: 'Prev'.	e fromCopyright.	self shouldHaveAttribute: 'rev' value: 'Copyright'.	e fromSection.	self shouldHaveAttribute: 'rev' value: 'Section'.	e fromSubsection.	self shouldHaveAttribute: 'rev' value: 'Subsection'.	e fromStart.	self shouldHaveAttribute: 'rev' value: 'Start'.	e beSection.	self shouldHaveAttribute: 'rel' value: 'Section'.	e fromPrev.	self shouldHaveAttribute: 'rev' value: 'Prev'.	e beContents.	self shouldHaveAttribute: 'rel' value: 'Contents'.	e fromGlossary.	self shouldHaveAttribute: 'rev' value: 'Glossary'.	e beRss.	self shouldHaveAttribute: 'rel' value: 'alternate'.	self shouldHaveAttribute: 'type' value: 'application/rss+xml'!

testCharset	e charset: 'foo'.	self shouldHaveAttribute: 'charset' value: 'foo'!

testContentType	e contentType: 'foo'.	self shouldHaveAttribute: 'type' value: 'foo'!

testHref	e href: 'foo'.	self shouldHaveAttribute: 'href' value: 'foo'!

testHrefLang	e hreflang: 'foo'.	self shouldHaveAttribute: 'hreflang' value: 'foo'!

testRel	e rel: 'foo'.	self shouldHaveAttribute: 'rel' value: 'foo'!

testRev	e rev: 'foo'.	self shouldHaveAttribute: 'rev' value: 'foo'!

testTarget	e target: 'foo'.	self shouldHaveAttribute: 'target' value: 'foo'!

testType	e type: 'foo'.	self shouldHaveAttribute: 'type' value: 'foo'! !
!ILLinkableElementTest categoriesFor: #setUp!public!running! !
!ILLinkableElementTest categoriesFor: #testAttributes!public!testing! !
!ILLinkableElementTest categoriesFor: #testCharset!public!testing! !
!ILLinkableElementTest categoriesFor: #testContentType!public!testing! !
!ILLinkableElementTest categoriesFor: #testHref!public!testing! !
!ILLinkableElementTest categoriesFor: #testHrefLang!public!testing! !
!ILLinkableElementTest categoriesFor: #testRel!public!testing! !
!ILLinkableElementTest categoriesFor: #testRev!public!testing! !
!ILLinkableElementTest categoriesFor: #testTarget!public!testing! !
!ILLinkableElementTest categoriesFor: #testType!public!testing! !

