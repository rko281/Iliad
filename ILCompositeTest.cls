"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILCompositeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCompositeTest guid: (GUID fromString: '{06f30f77-51d1-45e4-9f1b-d1921ad7862e}')!
ILCompositeTest comment: ''!
!ILCompositeTest categoriesForClass!Iliad-Tests-Utilities! !
!ILCompositeTest methodsFor!

testAdd	| composite child1 child2 children |	children := OrderedCollection new.	composite := ILComposite new.	child1 := ILComposite new.	child2 := ILComposite new.	composite add: child1.	composite childrenDo: [ :each | children add: each ].	self assert: children size equals: 1.	self assert: (children includes: child1).	composite add: child2.	children := OrderedCollection new.	composite childrenDo: [ :each | children add: each ].	self assert: children size equals: 2.	self assert: (children includes: child1).	self assert: (children includes: child2)!

testAllChildren	| c1 c2 c3 c4 c5 c6 res |	c1 := ILComposite new.	c2 := ILComposite new.	c3 := ILComposite new.	c4 := ILComposite new.	c5 := ILComposite new.	c6 := ILComposite new.	c1 add: c2.	c1 add: c3.	c2 add: c4.	c2 add: c5.	c3 add: c6.		res := OrderedCollection new.	"Recursively collect all children"	c1 allChildrenDo: [:each | res add: each].	self assert: (res includes: c2).	self assert: (res includes: c3).	self assert: (res includes: c4).	self assert: (res includes: c5).	self assert: (res includes: c6)	!

testChildren	| c1 c2 c3 res |	c1 := ILComposite new.	c2 := ILComposite new.	c3 := ILComposite new.	c1 add: c2.	c1 add: c3.		res := OrderedCollection new.	c1 childrenDo: [:each | res add: each].	self assert: (res includes: c2).	self assert: (res includes: c3)! !
!ILCompositeTest categoriesFor: #testAdd!public!testing! !
!ILCompositeTest categoriesFor: #testAllChildren!public!testing! !
!ILCompositeTest categoriesFor: #testChildren!public!testing! !

