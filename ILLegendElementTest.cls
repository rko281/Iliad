"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILLegendElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILLegendElementTest guid: (GUID fromString: '{853fb159-627c-4c54-a43f-7e27be6a1b66}')!
ILLegendElementTest comment: ''!
!ILLegendElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILLegendElementTest methodsFor!

setUp	e := ILLegendElement  new!

testAccessKey	e accesskey: $a.	self shouldHaveAttribute: 'accesskey' value: 'a'!

testTag	self assert: e tag equals: 'legend'! !
!ILLegendElementTest categoriesFor: #setUp!public!running! !
!ILLegendElementTest categoriesFor: #testAccessKey!public!testing! !
!ILLegendElementTest categoriesFor: #testTag!public!testing! !

