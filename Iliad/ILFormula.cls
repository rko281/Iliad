﻿"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILFormula
	instanceVariableNames: 'proxy conditions containers formulas buttons saveAction cancelAction errors multipart subFormula cssClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFormula guid: (GUID fromString: '{a314d253-b65c-463b-9790-44808693b5f4}')!
ILFormula comment: ''!
!ILFormula categoriesForClass!Iliad-More-Formula! !
!ILFormula methodsFor!

addCondition: aCondition

addCondition: aCondition labelled: aBlock

addCssClass: aString

addField: aField

addField: aField label: aString

addFormula: aFormula

autoCompleteInputOn: aSelector

beMultipart

beSubFormula

buttons

buttons: aCollection

buttonsContents

cancel

cancelAction

cancelAction: aBlock

checkboxOn: aSelector

checkboxOn: aSelector label: aString

collect: aBlock

commit

conditions

containers 

containersContents

contents

cssClass

cssClass: aString

dateInputOn: aSelector

dateInputOn: aSelector label: aString

defaultButtons

defaultCancelAction

defaultSaveAction

do: aBlock

errors

errorsContents

fields

fileInputOn: aSelector

fileInputOn: aSelector label: aString

formulas

formulas: aCollection

inputOn: aSelector

inputOn: aSelector label: aString

isEmpty

isMultipart 

isSubFormula 

isValid

mainFormulaContents

model

multipart

multipleCheckBoxOn: aSelector

multipleCheckBoxOn: aSelector label: aString

newContainer

newContainerLabelled: aString

numberInputOn: aSelector

numberInputOn: aSelector label: aString

passwordOn: aSelector

passwordOn: aSelector label: aString

postCopy

proxy

radioButtonOn: aSelector label: aString

radioButtonOn: aSelector label: aString groupName: groupName

reject: aBlock

repeatedPasswordOn: aSelector

repeatedPasswordOn: aSelector label: aString repeatLabel: repeatString

save

saveAction

saveAction: aBlock

scripts

select: aBlock

selectOn: aSelector

selectOn: aSelector label: aString

setModel: anObject

styles

subFormula

subFormulaContents

textareaOn: aSelector

textareaOn: aSelector label: aString

validate
!ILFormula categoriesFor: #addCondition:!accessing!public! !
!ILFormula categoriesFor: #addCondition:labelled:!accessing!public! !
!ILFormula categoriesFor: #addCssClass:!accessing!public! !
!ILFormula categoriesFor: #addField:!adding!public! !
!ILFormula categoriesFor: #addField:label:!adding!public! !
!ILFormula categoriesFor: #addFormula:!adding!public! !
!ILFormula categoriesFor: #autoCompleteInputOn:!adding!public! !
!ILFormula categoriesFor: #beMultipart!accessing!public! !
!ILFormula categoriesFor: #beSubFormula!accessing!public! !
!ILFormula categoriesFor: #buttons!accessing!public! !
!ILFormula categoriesFor: #buttons:!accessing!public! !
!ILFormula categoriesFor: #buttonsContents!building!public! !
!ILFormula categoriesFor: #cancel!actions!public! !
!ILFormula categoriesFor: #cancelAction!accessing!public! !
!ILFormula categoriesFor: #cancelAction:!accessing!public! !
!ILFormula categoriesFor: #checkboxOn:!adding!public! !
!ILFormula categoriesFor: #checkboxOn:label:!adding!public! !
!ILFormula categoriesFor: #collect:!enumerating!public! !
!ILFormula categoriesFor: #commit!actions!public! !
!ILFormula categoriesFor: #conditions!accessing!public! !
!ILFormula categoriesFor: #containers!accessing!public! !
!ILFormula categoriesFor: #containersContents!building!public! !
!ILFormula categoriesFor: #contents!building!public! !
!ILFormula categoriesFor: #cssClass!accessing!public! !
!ILFormula categoriesFor: #cssClass:!accessing!public! !
!ILFormula categoriesFor: #dateInputOn:!adding!public! !
!ILFormula categoriesFor: #dateInputOn:label:!adding!public! !
!ILFormula categoriesFor: #defaultButtons!defaults!public! !
!ILFormula categoriesFor: #defaultCancelAction!defaults!public! !
!ILFormula categoriesFor: #defaultSaveAction!defaults!public! !
!ILFormula categoriesFor: #do:!enumerating!public! !
!ILFormula categoriesFor: #errors!accessing!public! !
!ILFormula categoriesFor: #errorsContents!building!public! !
!ILFormula categoriesFor: #fields!accessing!public! !
!ILFormula categoriesFor: #fileInputOn:!adding!public! !
!ILFormula categoriesFor: #fileInputOn:label:!adding!public! !
!ILFormula categoriesFor: #formulas!accessing!public! !
!ILFormula categoriesFor: #formulas:!accessing!public! !
!ILFormula categoriesFor: #inputOn:!adding!public! !
!ILFormula categoriesFor: #inputOn:label:!adding!public! !
!ILFormula categoriesFor: #isEmpty!public!testing! !
!ILFormula categoriesFor: #isMultipart!public!testing! !
!ILFormula categoriesFor: #isSubFormula!public!testing! !
!ILFormula categoriesFor: #isValid!public!testing! !
!ILFormula categoriesFor: #mainFormulaContents!building!public! !
!ILFormula categoriesFor: #model!accessing!public! !
!ILFormula categoriesFor: #multipart!accessing!public! !
!ILFormula categoriesFor: #multipleCheckBoxOn:!adding!public! !
!ILFormula categoriesFor: #multipleCheckBoxOn:label:!adding!public! !
!ILFormula categoriesFor: #newContainer!accessing!public! !
!ILFormula categoriesFor: #newContainerLabelled:!accessing!public! !
!ILFormula categoriesFor: #numberInputOn:!adding!public! !
!ILFormula categoriesFor: #numberInputOn:label:!adding!public! !
!ILFormula categoriesFor: #passwordOn:!adding!public! !
!ILFormula categoriesFor: #passwordOn:label:!adding!public! !
!ILFormula categoriesFor: #postCopy!copying!public! !
!ILFormula categoriesFor: #proxy!accessing!public! !
!ILFormula categoriesFor: #radioButtonOn:label:!adding!public! !
!ILFormula categoriesFor: #radioButtonOn:label:groupName:!adding!public! !
!ILFormula categoriesFor: #reject:!enumerating!public! !
!ILFormula categoriesFor: #repeatedPasswordOn:!adding!public! !
!ILFormula categoriesFor: #repeatedPasswordOn:label:repeatLabel:!adding!public! !
!ILFormula categoriesFor: #save!actions!public! !
!ILFormula categoriesFor: #saveAction!accessing!public! !
!ILFormula categoriesFor: #saveAction:!accessing!public! !
!ILFormula categoriesFor: #scripts!building!public! !
!ILFormula categoriesFor: #select:!enumerating!public! !
!ILFormula categoriesFor: #selectOn:!adding!public! !
!ILFormula categoriesFor: #selectOn:label:!adding!public! !
!ILFormula categoriesFor: #setModel:!private! !
!ILFormula categoriesFor: #styles!building!public! !
!ILFormula categoriesFor: #subFormula!accessing!public! !
!ILFormula categoriesFor: #subFormulaContents!building!public! !
!ILFormula categoriesFor: #textareaOn:!adding!public! !
!ILFormula categoriesFor: #textareaOn:label:!adding!public! !
!ILFormula categoriesFor: #validate!actions!public! !

!ILFormula class methodsFor!

on: anObject
!ILFormula class categoriesFor: #on:!instance creation!public! !
