"Filed out from Dolphin Smalltalk 7"!

ILRSSElement subclass: #ILRSSGuidElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSGuidElement guid: (GUID fromString: '{67c20e18-7688-4858-bc1b-d3e51fb74043}')!
ILRSSGuidElement comment: ''!
!ILRSSGuidElement categoriesForClass!Iliad-More-RSS! !
!ILRSSGuidElement methodsFor!

isPermaLink: aBoolean	self attributeAt: 'isPermaLink' put: aBoolean greaseString!

tag	^'guid'! !
!ILRSSGuidElement categoriesFor: #isPermaLink:!accessing attributes!public! !
!ILRSSGuidElement categoriesFor: #tag!accessing!public! !

