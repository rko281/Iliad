"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILListElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILListElementTest guid: (GUID fromString: '{065f6dab-f233-46df-9418-2360df53c372}')!
ILListElementTest comment: ''!
!ILListElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILListElementTest methodsFor!

setUp	e := ILListElement new!

testBeOrdered	e beOrdered.	self assert: e tag equals: 'ol'!

testBeUnordered	e beUnordered.	self assert: e tag equals: 'ul'! !
!ILListElementTest categoriesFor: #setUp!public!running! !
!ILListElementTest categoriesFor: #testBeOrdered!public!testing! !
!ILListElementTest categoriesFor: #testBeUnordered!public!testing! !

