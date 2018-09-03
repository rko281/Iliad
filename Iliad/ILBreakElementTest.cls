"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILBreakElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILBreakElementTest guid: (GUID fromString: '{bccf81b1-becc-4024-8308-bdb1973d2369}')!
ILBreakElementTest comment: ''!
!ILBreakElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILBreakElementTest methodsFor!

setUp	e := ILBreakElement new!

testTag	self assert: e tag equals: 'br'! !
!ILBreakElementTest categoriesFor: #setUp!public!running! !
!ILBreakElementTest categoriesFor: #testTag!public!testing! !

