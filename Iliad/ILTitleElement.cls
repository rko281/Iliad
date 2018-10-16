"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILTitleElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTitleElement guid: (GUID fromString: '{c3f12086-ee1a-4e63-878e-4ee3aaad686f}')!
ILTitleElement comment: ''!
!ILTitleElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILTitleElement methodsFor!

onEvent: anEvent add: aString 	self doesNotUnderstandAttribute: 'on', anEvent!

tag	^'title'! !
!ILTitleElement categoriesFor: #onEvent:add:!accessing attributes/events!public! !
!ILTitleElement categoriesFor: #tag!accessing!public! !

