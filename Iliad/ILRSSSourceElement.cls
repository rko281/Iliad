"Filed out from Dolphin Smalltalk 7"!

ILRSSElement subclass: #ILRSSSourceElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSSourceElement guid: (GUID fromString: '{59907f15-a66e-4f5a-bd0b-6db8c5f08e7a}')!
ILRSSSourceElement comment: ''!
!ILRSSSourceElement categoriesForClass!Iliad-More-RSS! !
!ILRSSSourceElement methodsFor!

tag	^'source'!

url: anUrl	self attributeAt: 'url' put: anUrl! !
!ILRSSSourceElement categoriesFor: #tag!accessing!public! !
!ILRSSSourceElement categoriesFor: #url:!accessing attributes!public! !

