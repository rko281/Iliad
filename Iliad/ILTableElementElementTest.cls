"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILTableElementElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTableElementElementTest guid: (GUID fromString: '{9e3ca004-67d6-4c7f-903c-16616d6af8cb}')!
ILTableElementElementTest comment: ''!
!ILTableElementElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILTableElementElementTest methodsFor!

setUp	e := ILTableElementElement new!

testAlignment	e align: 'foo'.	self shouldHaveAttribute: 'align' value: 'foo'!

testAttributes	e centerAlign.	self shouldHaveAttribute: 'align' value: 'center'.	e rightAlign.	self shouldHaveAttribute: 'align' value: 'right'.	e bottomValign.	self shouldHaveAttribute: 'valign' value: 'bottom'.	e characterAlign.	self shouldHaveAttribute: 'align' value: 'char'.	e leftAlign.	self shouldHaveAttribute: 'align' value: 'left'.	e middleValign.	self shouldHaveAttribute: 'valign' value: 'middle'.	e topValign.	self shouldHaveAttribute: 'valign' value: 'top'.	e baselineValign.	self shouldHaveAttribute: 'valign' value: 'baseline'.	e justifyAlign.	self shouldHaveAttribute: 'align' value: 'justify'!

testVerticalAlignment	e valign: 'foo'.	self shouldHaveAttribute: 'valign' value: 'foo'! !
!ILTableElementElementTest categoriesFor: #setUp!public!running! !
!ILTableElementElementTest categoriesFor: #testAlignment!public!testing! !
!ILTableElementElementTest categoriesFor: #testAttributes!public!testing! !
!ILTableElementElementTest categoriesFor: #testVerticalAlignment!public!testing! !

