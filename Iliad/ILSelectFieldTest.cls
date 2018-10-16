"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILSelectFieldTest
	instanceVariableNames: 'selectField'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILSelectFieldTest guid: (GUID fromString: '{96af7f2d-37eb-41aa-a5c8-2c54b7b141b7}')!
ILSelectFieldTest comment: ''!
!ILSelectFieldTest categoriesForClass!Iliad-Tests-Formula! !
!ILSelectFieldTest methodsFor!

setUp	selectField := ILSelectField new!

testIsMultiple	self deny: (selectField isMultiple)! !
!ILSelectFieldTest categoriesFor: #setUp!private! !
!ILSelectFieldTest categoriesFor: #testIsMultiple!private! !

