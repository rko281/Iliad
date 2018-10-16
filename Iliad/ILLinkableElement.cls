"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILLinkableElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILLinkableElement guid: (GUID fromString: '{cbb75989-c33f-403b-a0b8-70ae2ef2964b}')!
ILLinkableElement comment: ''!
!ILLinkableElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILLinkableElement methodsFor!

accesskey: aCharacter	self attributeAt: 'accesskey' put: aCharacter greaseString!

beAlternate	self rel: 'Alternate'!

beAppendix	self rel: 'Appendix'!

beBookmark	self rel: 'Bookmark'!

beChapter	self rel: 'Chapter'!

beContents	self rel: 'Contents'!

beCopyright	self rel: 'Copyright'!

beFavicon	self rel: 'shortcut icon'!

beGlossary	self rel: 'Glossary'!

beHelp	self rel: 'Help'!

beIndex	self rel: 'Index'!

beNext	self rel: 'Next'!

bePrev	self rel: 'Prev'!

bePrevious	self rel: 'Prev'!

beRss	self rel: 'alternate'.	self type: ('application/rss+xml')!

beSection	self rel: 'Section'!

beStart	self rel: 'Start'!

beStylesheet	self rel: 'Stylesheet'.	self type: 'text/css'!

beSubsection	self rel: 'Subsection'!

charset: aString 	self attributeAt: 'charset' put: aString!

contentType: aString	self type: aString!

fromAlternate	self rev: 'Alternate'!

fromAppendix	self rev: 'Appendix'!

fromBookmark	self rev: 'Bookmark'!

fromChapter	self rev: 'Chapter'!

fromContents	self rev: 'Contents'!

fromCopyright	self rev: 'Copyright'!

fromGlossary	self rev: 'Glossary'!

fromHelp	self rev: 'Help'!

fromIndex	self rev: 'Index'!

fromNext	self rev: 'Next'!

fromPrev	self rev: 'Prev'!

fromPrevious	self rev: 'Prev'!

fromSection	self rev: 'Section'!

fromStart	self rev: 'Start'!

fromStylesheet	self rev: 'Stylesheet'!

fromSubsection	self rev: 'Subsection'!

href	^ self attributeAt: 'href'!

href: aString 	self attributeAt: 'href' put: aString!

hreflang: aString 	self attributeAt: 'hreflang' put: aString!

linkToApplication: anApplicationClass	self linkToApplication: anApplicationClass controller: ''!

linkToApplication: anApplicationClass controller: aString	self href: (self context urlBuilder urlFor: anApplicationClass absolutePath, '/', aString)!

linkToLocal: aString	self linkToApplication: self application class controller: aString!

rel: aString 	self attributeAt: 'rel' put: aString!

rev: aString 	self attributeAt: 'rev' put: aString!

target: aString	self attributeAt: 'target' put: aString!

type: aString 	self attributeAt: 'type' put: aString! !
!ILLinkableElement categoriesFor: #accesskey:!accessing attributes!public! !
!ILLinkableElement categoriesFor: #beAlternate!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #beAppendix!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #beBookmark!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #beChapter!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #beContents!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #beCopyright!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #beFavicon!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #beGlossary!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #beHelp!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #beIndex!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #beNext!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #bePrev!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #bePrevious!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #beRss!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #beSection!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #beStart!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #beStylesheet!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #beSubsection!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #charset:!accessing attributes!public! !
!ILLinkableElement categoriesFor: #contentType:!accessing attributes!public! !
!ILLinkableElement categoriesFor: #fromAlternate!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #fromAppendix!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #fromBookmark!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #fromChapter!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #fromContents!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #fromCopyright!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #fromGlossary!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #fromHelp!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #fromIndex!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #fromNext!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #fromPrev!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #fromPrevious!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #fromSection!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #fromStart!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #fromStylesheet!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #fromSubsection!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #href!accessing attributes!public! !
!ILLinkableElement categoriesFor: #href:!accessing attributes!public! !
!ILLinkableElement categoriesFor: #hreflang:!accessing attributes!public! !
!ILLinkableElement categoriesFor: #linkToApplication:!accessing attributes!public! !
!ILLinkableElement categoriesFor: #linkToApplication:controller:!accessing attributes!public! !
!ILLinkableElement categoriesFor: #linkToLocal:!accessing attributes!public! !
!ILLinkableElement categoriesFor: #rel:!accessing attributes/relationships!public! !
!ILLinkableElement categoriesFor: #rev:!accessing attributes/reverse links!public! !
!ILLinkableElement categoriesFor: #target:!accessing attributes!public! !
!ILLinkableElement categoriesFor: #type:!accessing attributes!public! !

