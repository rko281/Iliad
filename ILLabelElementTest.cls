"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILLabelElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILLabelElementTest guid: (GUID fromString: '{02dca2cd-af0e-414f-ab14-cc3d563aa496}')!
ILLabelElementTest comment: ''!
!ILLabelElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILLabelElementTest methodsFor!

setUp	e := ILLabelElement new!

testAccessKey	e accesskey: $a.	self shouldHaveAttribute: 'accesskey' value: 'a'!

testFor	e for: 'foo'.	self shouldHaveAttribute: 'for' value: 'foo'!

testTag	self assert: e tag equals: 'label'! !
!ILLabelElementTest categoriesFor: #setUp!public!running! !
!ILLabelElementTest categoriesFor: #testAccessKey!public!testing! !
!ILLabelElementTest categoriesFor: #testFor!public!testing! !
!ILLabelElementTest categoriesFor: #testTag!public!testing! !

