"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILCheckboxElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCheckboxElementTest guid: (GUID fromString: '{2d6bd73d-bd92-4d11-802c-0b9fe2dbc1d9}')!
ILCheckboxElementTest comment: ''!
!ILCheckboxElementTest categoriesForClass!Iliad-Tests-Elements! !
!ILCheckboxElementTest methodsFor!

setUp	e := ILCheckboxElement new!

testAccessKey	e accesskey: $a.	self shouldHaveAttribute: 'accesskey' value: 'a'!

testBeChecked	e beChecked.	self shouldHaveAttribute: 'checked' value: 'checked'!

testBeforePrintHtml	e beforePrintHtml.	self shouldHaveAttribute: 'type' value: 'checkbox'!

testChecked	e checked: true.	self shouldHaveAttribute: 'checked' value: 'checked'!

testTag	self assert: e tag equals: 'input'! !
!ILCheckboxElementTest categoriesFor: #setUp!public!running! !
!ILCheckboxElementTest categoriesFor: #testAccessKey!public!testing! !
!ILCheckboxElementTest categoriesFor: #testBeChecked!public!testing! !
!ILCheckboxElementTest categoriesFor: #testBeforePrintHtml!public!testing! !
!ILCheckboxElementTest categoriesFor: #testChecked!public!testing! !
!ILCheckboxElementTest categoriesFor: #testTag!public!testing! !

