"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILAnchorElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILAnchorElementTest guid: (GUID fromString: '{b49387f2-f7a1-4ad7-9d76-3d76eb67e8cc}')!
ILAnchorElementTest comment: ''!
!ILAnchorElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILAnchorElementTest methodsFor!

setUp	e := ILAnchorElement new!

testAccessKey	e accesskey: $a.	self shouldHaveAttribute: 'accesskey' value: 'a'!

testCircularShape	e circleShape.	self shouldHaveAttribute: 'shape' value: 'circle'!

testCoords	e coords: 'foo'.	self shouldHaveAttribute: 'coords' value: 'foo'!

testDefaultShape	e defaultShape.	self shouldHaveAttribute: 'shape' value: 'default'!

testPolygonalShape	e polyShape.	self shouldHaveAttribute: 'shape' value: 'poly'!

testRectangularShape	e rectShape.	self shouldHaveAttribute: 'shape' value: 'rect'!

testShape	e shape: 'foo'.	self shouldHaveAttribute: 'shape' value: 'foo'!

testTabIndex	e tabindex: 3.	self shouldHaveAttribute: 'tabindex' value: '3'!

testTag	self assert: e tag equals: 'a'! !
!ILAnchorElementTest categoriesFor: #setUp!public!running! !
!ILAnchorElementTest categoriesFor: #testAccessKey!public!testing! !
!ILAnchorElementTest categoriesFor: #testCircularShape!public!testing! !
!ILAnchorElementTest categoriesFor: #testCoords!public!testing! !
!ILAnchorElementTest categoriesFor: #testDefaultShape!public!testing! !
!ILAnchorElementTest categoriesFor: #testPolygonalShape!public!testing! !
!ILAnchorElementTest categoriesFor: #testRectangularShape!public!testing! !
!ILAnchorElementTest categoriesFor: #testShape!public!testing! !
!ILAnchorElementTest categoriesFor: #testTabIndex!public!testing! !
!ILAnchorElementTest categoriesFor: #testTag!public!testing! !

