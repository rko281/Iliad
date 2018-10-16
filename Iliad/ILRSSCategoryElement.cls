"Filed out from Dolphin Smalltalk 7"!

ILRSSElement subclass: #ILRSSCategoryElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSCategoryElement guid: (GUID fromString: '{35a1ba4f-7b8e-479b-a3c4-49d12b807de3}')!
ILRSSCategoryElement comment: ''!
!ILRSSCategoryElement categoriesForClass!Iliad-More-RSS! !
!ILRSSCategoryElement methodsFor!

domain: anUrl	self attributeAt: 'domain' put: anUrl greaseString!

tag	^'category'! !
!ILRSSCategoryElement categoriesFor: #domain:!accessing attributes!public! !
!ILRSSCategoryElement categoriesFor: #tag!accessing!public! !

