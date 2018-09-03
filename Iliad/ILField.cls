﻿"Filed out from Dolphin Smalltalk 7"!

ILBuildable subclass: #ILField
	instanceVariableNames: 'formula conditions errors customRows reader writer labelContents commentContents id'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILField guid: (GUID fromString: '{3f245e71-88ab-4a98-8cf2-267e5137c815}')!
ILField comment: ''!
!ILField categoriesForClass!Iliad-More-Formula! !
!ILField methodsFor!

addCondition: aCondition

addCondition: aCondition labelled: aBlock

addRow: aBlock

build

buildContents

comment: aString

commentContents 

commentContents: aBlock

conditions

customRows

customRowsContents

errors

errorsContents

fieldContents

formula

formula: aFormula

id

isMultipart 

isValid

label: aString

labelContents

labelContents: aBlock

on: aFormula selector: aSelector

postCopyTo: aContainer

reader

reader: aSymbol

tableRowContents

validate

value

value: anObject

writer

writer: aSymbol
!ILField categoriesFor: #addCondition:!conditions!public! !
!ILField categoriesFor: #addCondition:labelled:!conditions!public! !
!ILField categoriesFor: #addRow:!copying!public! !
!ILField categoriesFor: #build!building!public! !
!ILField categoriesFor: #buildContents!building!public! !
!ILField categoriesFor: #comment:!accessing!public! !
!ILField categoriesFor: #commentContents!accessing!public! !
!ILField categoriesFor: #commentContents:!accessing!public! !
!ILField categoriesFor: #conditions!accessing!public! !
!ILField categoriesFor: #customRows!copying!public! !
!ILField categoriesFor: #customRowsContents!building!public! !
!ILField categoriesFor: #errors!accessing!public! !
!ILField categoriesFor: #errorsContents!building!public! !
!ILField categoriesFor: #fieldContents!building!public! !
!ILField categoriesFor: #formula!copying!public! !
!ILField categoriesFor: #formula:!copying!public! !
!ILField categoriesFor: #id!accessing!public! !
!ILField categoriesFor: #isMultipart!public!testing! !
!ILField categoriesFor: #isValid!public!testing! !
!ILField categoriesFor: #label:!accessing!public! !
!ILField categoriesFor: #labelContents!accessing!public! !
!ILField categoriesFor: #labelContents:!accessing!public! !
!ILField categoriesFor: #on:selector:!private! !
!ILField categoriesFor: #postCopyTo:!copying!public! !
!ILField categoriesFor: #reader!accessing!public! !
!ILField categoriesFor: #reader:!accessing!public! !
!ILField categoriesFor: #tableRowContents!building!public! !
!ILField categoriesFor: #validate!actions!public! !
!ILField categoriesFor: #value!accessing!public! !
!ILField categoriesFor: #value:!accessing!public! !
!ILField categoriesFor: #writer!accessing!public! !
!ILField categoriesFor: #writer:!accessing!public! !

!ILField class methodsFor!

on: aFormula selector: aSelector
!ILField class categoriesFor: #on:selector:!instance creation!public! !
