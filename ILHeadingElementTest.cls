"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILHeadingElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILHeadingElementTest guid: (GUID fromString: '{10961e7c-f778-44d6-9ce0-8d95c33fd348}')!
ILHeadingElementTest comment: ''!
!ILHeadingElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILHeadingElementTest methodsFor!

setUp	e := ILHeadingElement new.	e level: 2!

testTag	self assert: e tag equals: 'h2'! !
!ILHeadingElementTest categoriesFor: #setUp!public!running! !
!ILHeadingElementTest categoriesFor: #testTag!public!testing! !

