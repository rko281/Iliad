"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILFieldTest
	instanceVariableNames: 'field'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFieldTest guid: (GUID fromString: '{e2aee3ba-074a-41b9-aa78-691e88b4bfc2}')!
ILFieldTest comment: ''!
!ILFieldTest categoriesForClass!Iliad-Tests-Formula! !
!ILFieldTest methodsFor!

setUp 	field := ILField new!

testIsMultipart	self deny: (field isMultipart)!

testIsValid	self assert: (field isValid)! !
!ILFieldTest categoriesFor: #setUp!public!running! !
!ILFieldTest categoriesFor: #testIsMultipart!public!tests! !
!ILFieldTest categoriesFor: #testIsValid!public!tests! !

