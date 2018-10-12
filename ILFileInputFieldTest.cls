"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILFileInputFieldTest
	instanceVariableNames: 'fileInput'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileInputFieldTest guid: (GUID fromString: '{cc98d3c4-0afa-4c97-b615-d07fdc9d07df}')!
ILFileInputFieldTest comment: ''!
!ILFileInputFieldTest categoriesForClass!Iliad-Tests-Formula! !
!ILFileInputFieldTest methodsFor!

setUp 	fileInput := ILFileInputField new!

testIsMultipart	self assert: (fileInput isMultipart)! !
!ILFileInputFieldTest categoriesFor: #setUp!public!running! !
!ILFileInputFieldTest categoriesFor: #testIsMultipart!public!testing! !

