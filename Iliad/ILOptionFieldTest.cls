"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILOptionFieldTest
	instanceVariableNames: 'optionField'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILOptionFieldTest guid: (GUID fromString: '{e8ab36d8-a4c6-4b54-ad05-62c895062870}')!
ILOptionFieldTest comment: ''!
!ILOptionFieldTest categoriesForClass!Iliad-Tests-Formula! !
!ILOptionFieldTest methodsFor!

setUp 	optionField := ILOptionField new!

testIsMultiple	self assert: (optionField isMultiple)! !
!ILOptionFieldTest categoriesFor: #setUp!public!running! !
!ILOptionFieldTest categoriesFor: #testIsMultiple!public!running! !

