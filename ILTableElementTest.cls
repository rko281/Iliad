"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILTableElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTableElementTest guid: (GUID fromString: '{f14b666c-1878-4f2c-bda2-05de92564698}')!
ILTableElementTest comment: ''!
!ILTableElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILTableElementTest methodsFor!

setUp	e := ILTableElement new!

testAttributes	e rhsFrame.	self shouldHaveAttribute: 'frame' value: 'rhs'.	e vsidesFrame.	self shouldHaveAttribute: 'frame' value: 'vsides'.	e aboveFrame.	self shouldHaveAttribute: 'frame' value: 'above'.	e groupRules.	self shouldHaveAttribute: 'rules' value: 'groups'.	e hsidesFrame.	self shouldHaveAttribute: 'frame' value: 'hsides'.	e colsRules.	self shouldHaveAttribute: 'rules' value: 'cols'.	e noRules.	self shouldHaveAttribute: 'rules' value: 'none'.	e boxFrame.	self shouldHaveAttribute: 'frame' value: 'box'.	e rowsRules.	self shouldHaveAttribute: 'rules' value: 'rows'.	e voidFrame.	self shouldHaveAttribute: 'frame' value: 'void'.	e allRules.	self shouldHaveAttribute: 'rules' value: 'all'.	e belowFrame.	self shouldHaveAttribute: 'frame' value: 'below'.	e lhsFrame.	self shouldHaveAttribute: 'frame' value: 'lhs'.	e borderFrame.	self shouldHaveAttribute: 'frame' value: 'border'!

testBorder	e border: 2.	self shouldHaveAttribute: 'border' value: '2'!

testCellPadding	e cellpadding: 2.	self shouldHaveAttribute: 'cellpadding' value: '2'!

testCellSpacing	e cellspacing: 2.	self shouldHaveAttribute: 'cellspacing' value: '2'!

testFrame	e frame: 'foo'.	self shouldHaveAttribute: 'frame' value: 'foo'!

testRules	e rules: 'foo'.	self shouldHaveAttribute: 'rules' value: 'foo'!

testSummary	e summary: 'foo'.	self shouldHaveAttribute: 'summary' value: 'foo'!

testTag	self assert: e tag equals: 'table'!

testWidth	e width: 2.	self shouldHaveAttribute: 'width' value: '2'! !
!ILTableElementTest categoriesFor: #setUp!public!running! !
!ILTableElementTest categoriesFor: #testAttributes!public!testing! !
!ILTableElementTest categoriesFor: #testBorder!public!testing! !
!ILTableElementTest categoriesFor: #testCellPadding!public!testing! !
!ILTableElementTest categoriesFor: #testCellSpacing!public!testing! !
!ILTableElementTest categoriesFor: #testFrame!public!testing! !
!ILTableElementTest categoriesFor: #testRules!public!testing! !
!ILTableElementTest categoriesFor: #testSummary!public!testing! !
!ILTableElementTest categoriesFor: #testTag!public!testing! !
!ILTableElementTest categoriesFor: #testWidth!public!testing! !

