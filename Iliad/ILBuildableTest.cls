"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILBuildableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILBuildableTest guid: (GUID fromString: '{2d9cd5b3-a103-4901-957e-713ac2b3daa3}')!
ILBuildableTest comment: ''!
!ILBuildableTest categoriesForClass!Iliad-Tests-Buildables! !
!ILBuildableTest methodsFor!

testAttributes	| buildable |	buildable := ILBuildable new.	buildable attributeAt: #foo put: 'bar'.	self assert: (buildable attributes at: #foo) equals: 'bar'!

testBuild	| e buildable |	e := ILElement new.	buildable := ILBuildableMock new.	e build: buildable.	self assert: e children size equals: 1.	self assert: e children first == buildable rootElement!

testBuildBlock	| e e2 block |	e := ILElement new.	e2 := ILElement new.	block := [ :element | element add: e2 ].	e build: block.	self assert: e children size equals: 1.	self assert: e children first == e2! !
!ILBuildableTest categoriesFor: #testAttributes!public!testing! !
!ILBuildableTest categoriesFor: #testBuild!public!testing! !
!ILBuildableTest categoriesFor: #testBuildBlock!public!testing! !

