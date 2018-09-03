"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILSelectElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILSelectElementTest guid: (GUID fromString: '{4150f09f-b631-42bd-9e05-589258cb947e}')!
ILSelectElementTest comment: ''!
!ILSelectElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILSelectElementTest methodsFor!

setUp	"Need a current session and action registry during ILSelectElement initialization"	ILCurrentContext 		use: (ILContext new session: ILSession new)		during: [e := ILSelectElement new]!

testBeMultiple	e beMultiple.	self shouldHaveAttribute: 'multiple' value: 'multiple'!

testDisabled	e disabled.	self shouldHaveAttribute: 'disabled' value: 'disabled'!

testSize	e size: 10.	self shouldHaveAttribute: 'size' value: '10'!

testTag	self assert: e tag equals: 'select'! !
!ILSelectElementTest categoriesFor: #setUp!public!running! !
!ILSelectElementTest categoriesFor: #testBeMultiple!public!testing! !
!ILSelectElementTest categoriesFor: #testDisabled!public!testing! !
!ILSelectElementTest categoriesFor: #testSize!public!testing! !
!ILSelectElementTest categoriesFor: #testTag!public!testing! !

