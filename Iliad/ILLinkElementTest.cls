"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILLinkElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILLinkElementTest guid: (GUID fromString: '{1b1c0fa4-d9b9-40a8-be23-a4d1816d0fa6}')!
ILLinkElementTest comment: ''!
!ILLinkElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILLinkElementTest methodsFor!

setUp	e := ILLinkElement new!

testAllMedia	e allMedia.	self shouldHaveAttribute: 'media' value: 'all'!

testAuralMedia	e auralMedia.	self shouldHaveAttribute: 'media' value: 'aural'!

testBrailleMedia	e brailleMedia.	self shouldHaveAttribute: 'media' value: 'braille'!

testHandheldMedia	e handheldMedia.	self shouldHaveAttribute: 'media' value: 'handheld'!

testMedia	e media: 'foo'.	self shouldHaveAttribute: 'media' value: 'foo'!

testPrintMedia	e printMedia.	self shouldHaveAttribute: 'media' value: 'print'!

testProjectionMedia	e projectionMedia.	self shouldHaveAttribute: 'media' value: 'projection'!

testScreenMedia	e screenMedia.	self shouldHaveAttribute: 'media' value: 'screen'!

testTag	self assert: e tag equals: 'link'!

testTtyMedia	e ttyMedia.	self shouldHaveAttribute: 'media' value: 'tty'!

testTvMedia	e tvMedia.	self shouldHaveAttribute: 'media' value: 'tv'!

testType	e type: 'foo'.	self shouldHaveAttribute: 'type' value: 'foo'! !
!ILLinkElementTest categoriesFor: #setUp!public!running! !
!ILLinkElementTest categoriesFor: #testAllMedia!public!testing! !
!ILLinkElementTest categoriesFor: #testAuralMedia!public!testing! !
!ILLinkElementTest categoriesFor: #testBrailleMedia!public!testing! !
!ILLinkElementTest categoriesFor: #testHandheldMedia!public!testing! !
!ILLinkElementTest categoriesFor: #testMedia!public!testing! !
!ILLinkElementTest categoriesFor: #testPrintMedia!public!testing! !
!ILLinkElementTest categoriesFor: #testProjectionMedia!public!testing! !
!ILLinkElementTest categoriesFor: #testScreenMedia!public!testing! !
!ILLinkElementTest categoriesFor: #testTag!public!testing! !
!ILLinkElementTest categoriesFor: #testTtyMedia!public!testing! !
!ILLinkElementTest categoriesFor: #testTvMedia!public!testing! !
!ILLinkElementTest categoriesFor: #testType!public!testing! !

