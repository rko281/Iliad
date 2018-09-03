"Filed out from Dolphin Smalltalk 7"!

ILClosingElement subclass: #ILBreakElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILBreakElement guid: (GUID fromString: '{898bd36a-7ba8-44d7-9011-5a1f461ad84a}')!
ILBreakElement comment: ''!
!ILBreakElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILBreakElement methodsFor!

onEvent: event add: aString 	self doesNotUnderstandAttribute: 'on', event!

tag	^'br'! !
!ILBreakElement categoriesFor: #onEvent:add:!accessing attributes/events!public! !
!ILBreakElement categoriesFor: #tag!accessing!public! !

