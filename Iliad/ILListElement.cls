"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILListElement
	instanceVariableNames: 'tag'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILListElement guid: (GUID fromString: '{5f731eaf-0584-48ae-8126-cafb3b7d0e20}')!
ILListElement comment: ''!
!ILListElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILListElement methodsFor!

beOrdered	self tag: 'ol'!

beUnordered	self tag: 'ul'!

tag	^tag!

tag: aString	tag := aString! !
!ILListElement categoriesFor: #beOrdered!accessing!public! !
!ILListElement categoriesFor: #beUnordered!accessing!public! !
!ILListElement categoriesFor: #tag!accessing!public! !
!ILListElement categoriesFor: #tag:!accessing!public! !

