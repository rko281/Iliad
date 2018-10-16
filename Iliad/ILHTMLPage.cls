"Filed out from Dolphin Smalltalk 7"!

ILBuildable subclass: #ILHTMLPage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILHTMLPage guid: (GUID fromString: '{cb469a67-bc5f-45f1-9373-db2b583d7dd4}')!
ILHTMLPage comment: ''!
!ILHTMLPage categoriesForClass!Iliad-Core-Buildables! !
!ILHTMLPage methodsFor!

body	^self attributeAt: #body ifAbsentPut: [ILBodyElement new]!

build	^self html 		add: self head;		add: self body;		yourself!

buildContents	^self html 		add: self head;		add: self body;		yourself!

head	^self attributeAt: #head ifAbsentPut: [ILHeadElement new]!

html	^self attributeAt: #html ifAbsentPut: [ILHtmlElement new]! !
!ILHTMLPage categoriesFor: #body!accessing attributes!public! !
!ILHTMLPage categoriesFor: #build!building!public! !
!ILHTMLPage categoriesFor: #buildContents!building!public! !
!ILHTMLPage categoriesFor: #head!accessing attributes!public! !
!ILHTMLPage categoriesFor: #html!accessing attributes!public! !

