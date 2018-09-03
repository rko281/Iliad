"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILTableCellElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTableCellElementTest guid: (GUID fromString: '{899772aa-e06a-43d6-8a85-a574e649fb28}')!
ILTableCellElementTest comment: ''!
!ILTableCellElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILTableCellElementTest methodsFor!

setUp	e := ILTableCellElement new!

testAbbreviation	e abbr: 'foo'.	self shouldHaveAttribute: 'abbr' value: 'foo'!

testAttributes	e colScope.	self shouldHaveAttribute: 'scope' value: 'col'.	e rowgroupScope.	self shouldHaveAttribute: 'scope' value: 'rowgroup'.	e colgroupScope.	self shouldHaveAttribute: 'scope' value: 'colgroup'.	e rowScope.	self shouldHaveAttribute: 'scope' value: 'row'!

testAxis	e axis: 'foo'.	self shouldHaveAttribute: 'axis' value: 'foo'!

testColumnSpan	e colspan: 2.	self shouldHaveAttribute: 'colspan' value: '2'!

testHeaders	e headers: #('foo' 'bar').	self shouldHaveAttribute: 'headers' value: 'foo,bar'!

testRowSpan	e rowspan: 2.	self shouldHaveAttribute: 'rowspan' value: '2'!

testScope	e scope: 'foo'.	self shouldHaveAttribute: 'scope' value: 'foo'! !
!ILTableCellElementTest categoriesFor: #setUp!public!running! !
!ILTableCellElementTest categoriesFor: #testAbbreviation!public!testing! !
!ILTableCellElementTest categoriesFor: #testAttributes!public!testing! !
!ILTableCellElementTest categoriesFor: #testAxis!public!testing! !
!ILTableCellElementTest categoriesFor: #testColumnSpan!public!testing! !
!ILTableCellElementTest categoriesFor: #testHeaders!public!testing! !
!ILTableCellElementTest categoriesFor: #testRowSpan!public!testing! !
!ILTableCellElementTest categoriesFor: #testScope!public!testing! !

