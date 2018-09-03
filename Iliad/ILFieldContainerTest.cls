"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILFieldContainerTest
	instanceVariableNames: 'fieldContainer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFieldContainerTest guid: (GUID fromString: '{6d2c40ef-c1f3-48b8-a50d-353ff6e2d507}')!
ILFieldContainerTest comment: ''!
!ILFieldContainerTest categoriesForClass!Iliad-Tests-Formula! !
!ILFieldContainerTest methodsFor!

setUp	fieldContainer := ILFieldContainer new!

testAddField	| field |	field := ILInputField new.	fieldContainer addField: field.	self assert: (fieldContainer fields includes: field)!

testUseFieldContainer	self deny: (fieldContainer useFieldset)! !
!ILFieldContainerTest categoriesFor: #setUp!private! !
!ILFieldContainerTest categoriesFor: #testAddField!public!tests! !
!ILFieldContainerTest categoriesFor: #testUseFieldContainer!public!tests! !

