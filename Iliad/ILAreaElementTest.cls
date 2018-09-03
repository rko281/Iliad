"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILAreaElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILAreaElementTest guid: (GUID fromString: '{7804d2a5-7d13-4f77-85dd-ec3a721912cf}')!
ILAreaElementTest comment: ''!
!ILAreaElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILAreaElementTest methodsFor!

setUp	e := ILAreaElement new!

testAccessKey	e accesskey: $a.	self shouldHaveAttribute: 'accesskey' value: 'a'.!

testAlternativeText	e alt: 'foo'.	self shouldHaveAttribute: 'alt' value: 'foo'.!

testCircleShape	e circleShape.	self shouldHaveAttribute: 'shape' value: 'circle'!

testCoords	e coords: 'foo'.	self shouldHaveAttribute: 'coords' value: 'foo'!

testDefaultShape	e defaultShape.	self shouldHaveAttribute: 'shape' value: 'default'!

testHref	e href: 'foo'.	self shouldHaveAttribute: 'href' value:  'foo'!

testNoHref	e nohref.	self shouldHaveAttribute: 'nohref' value: 'nohref'!

testOnFocus	e onFocus: 'foo'.	self shouldHaveAttribute: 'onfocus' value: 'foo'!

testPolyShape	e polyShape.	self shouldHaveAttribute: 'shape' value: 'poly'!

testRectShape	e rectShape.	self shouldHaveAttribute: 'shape' value: 'rect'!

testShape	e shape: 'foo'.	self shouldHaveAttribute: 'shape' value: 'foo'!

testTabIndex	e tabindex: 2.	self shouldHaveAttribute: 'tabindex' value: '2'!

testTag	self assert: e tag equals: 'area'! !
!ILAreaElementTest categoriesFor: #setUp!public!running! !
!ILAreaElementTest categoriesFor: #testAccessKey!public!testing! !
!ILAreaElementTest categoriesFor: #testAlternativeText!public!testing! !
!ILAreaElementTest categoriesFor: #testCircleShape!public!testing! !
!ILAreaElementTest categoriesFor: #testCoords!public!testing! !
!ILAreaElementTest categoriesFor: #testDefaultShape!public!testing! !
!ILAreaElementTest categoriesFor: #testHref!public!testing! !
!ILAreaElementTest categoriesFor: #testNoHref!public!testing! !
!ILAreaElementTest categoriesFor: #testOnFocus!public!testing! !
!ILAreaElementTest categoriesFor: #testPolyShape!public!testing! !
!ILAreaElementTest categoriesFor: #testRectShape!public!testing! !
!ILAreaElementTest categoriesFor: #testShape!public!testing! !
!ILAreaElementTest categoriesFor: #testTabIndex!public!testing! !
!ILAreaElementTest categoriesFor: #testTag!public!testing! !

