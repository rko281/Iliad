"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILHeadingElement
	instanceVariableNames: 'level'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILHeadingElement guid: (GUID fromString: '{3b2abc6b-11a4-4031-8929-cfb2febbba65}')!
ILHeadingElement comment: ''!
!ILHeadingElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILHeadingElement methodsFor!

level 	^level!

level: anInteger	level := anInteger greaseString!

tag	^ 'h', self level! !
!ILHeadingElement categoriesFor: #level!accessing!public! !
!ILHeadingElement categoriesFor: #level:!accessing!public! !
!ILHeadingElement categoriesFor: #tag!accessing!public! !

