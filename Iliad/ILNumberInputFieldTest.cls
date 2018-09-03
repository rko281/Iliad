"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILNumberInputFieldTest
	instanceVariableNames: 'numberInput'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILNumberInputFieldTest guid: (GUID fromString: '{e00de6d4-5267-4ea0-b4b6-33796f27cbdc}')!
ILNumberInputFieldTest comment: ''!
!ILNumberInputFieldTest categoriesForClass!Iliad-Tests-Formula! !
!ILNumberInputFieldTest methodsFor!

setUp 	numberInput := ILNumberInputField new!

testConvertToNumber	| temp |	temp := 2.3 asNumber.	self assert: (numberInput convertToNumber: '2,3') equals: temp! !
!ILNumberInputFieldTest categoriesFor: #setUp!public!running! !
!ILNumberInputFieldTest categoriesFor: #testConvertToNumber!public!tests! !

