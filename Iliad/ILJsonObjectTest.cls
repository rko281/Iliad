"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILJsonObjectTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILJsonObjectTest guid: (GUID fromString: '{489d2ec7-4720-4229-8c0e-c6af4fa83bbe}')!
ILJsonObjectTest comment: ''!
!ILJsonObjectTest categoriesForClass!Iliad-Tests-lib-JSON! !
!ILJsonObjectTest methodsFor!

testProperties	| jsonObject |	jsonObject := ILJsonObject new.	self assert: (jsonObject at: 'foo') equals: nil.	jsonObject at: 'foo' put: 'bar'.	self assert: (jsonObject properties includes: 'foo' -> 'bar')! !
!ILJsonObjectTest categoriesFor: #testProperties!public!testing! !

