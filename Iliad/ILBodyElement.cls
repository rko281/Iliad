"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILBodyElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILBodyElement guid: (GUID fromString: '{06314de6-8de8-4dd2-84f7-e0ee7bb9dfc3}')!
ILBodyElement comment: ''!
!ILBodyElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILBodyElement methodsFor!

onLoad: aString	self onEvent: 'Load' add: aString!

onUnload: aString	self onEvent: 'Unload' add: aString!

tag	^'body'! !
!ILBodyElement categoriesFor: #onLoad:!addessing attributes/events!public! !
!ILBodyElement categoriesFor: #onUnload:!addessing attributes/events!public! !
!ILBodyElement categoriesFor: #tag!accessing!public! !

