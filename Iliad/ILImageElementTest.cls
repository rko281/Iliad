"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILImageElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILImageElementTest guid: (GUID fromString: '{4b6fe5bb-7092-4766-8231-ec06ded0c7e2}')!
ILImageElementTest comment: ''!
!ILImageElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILImageElementTest methodsFor!

setUp	e := ILImageElement new!

testAlternativeText	e alt: 'foo'.	self shouldHaveAttribute: 'alt' value: 'foo'!

testHeight	e height: 300.	self shouldHaveAttribute: 'height' value: '300'!

testIsMap	e ismap.	self shouldHaveAttribute: 'ismap' value: 'ismap'!

testLongDescription	e longdesc: 'foo bar'.	self shouldHaveAttribute: 'longdesc' value: 'foo bar'!

testSource	e src: 'foo'.	self shouldHaveAttribute: 'src' value: 'foo'!

testSrcAlt	e src: 'http://www.google.com' alt: 'foo'.	self shouldHaveAttribute: 'src' value: 'http://www.google.com'.	self shouldHaveAttribute: 'alt' value: 'foo'!

testTag	self assert: e tag equals: 'img'!

testUsemap	e usemap: 'foo'.	self shouldHaveAttribute: 'usemap' value: 'foo'!

testWidth	e width: 200.	self shouldHaveAttribute: 'width' value: '200'! !
!ILImageElementTest categoriesFor: #setUp!public!running! !
!ILImageElementTest categoriesFor: #testAlternativeText!public!testing! !
!ILImageElementTest categoriesFor: #testHeight!public!testing! !
!ILImageElementTest categoriesFor: #testIsMap!public!testing! !
!ILImageElementTest categoriesFor: #testLongDescription!public!testing! !
!ILImageElementTest categoriesFor: #testSource!public!testing! !
!ILImageElementTest categoriesFor: #testSrcAlt!public!testing! !
!ILImageElementTest categoriesFor: #testTag!public!testing! !
!ILImageElementTest categoriesFor: #testUsemap!public!testing! !
!ILImageElementTest categoriesFor: #testWidth!public!testing! !

