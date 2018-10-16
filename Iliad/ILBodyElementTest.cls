"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILBodyElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILBodyElementTest guid: (GUID fromString: '{71fbf086-a16c-4826-ab4a-a612981ede49}')!
ILBodyElementTest comment: ''!
!ILBodyElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILBodyElementTest methodsFor!

setUp	e := ILBodyElement new!

testOnLoad	e onLoad: 'foo'.	self shouldHaveAttribute: 'onLoad' value: 'foo'!

testOnUnload	e onUnload: 'foo'.	self shouldHaveAttribute: 'onUnload' value: 'foo'!

testTag	self assert: e tag equals: 'body'! !
!ILBodyElementTest categoriesFor: #setUp!public!running! !
!ILBodyElementTest categoriesFor: #testOnLoad!public!testing! !
!ILBodyElementTest categoriesFor: #testOnUnload!public!testing! !
!ILBodyElementTest categoriesFor: #testTag!public!testing! !

