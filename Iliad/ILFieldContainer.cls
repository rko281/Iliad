"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILFieldContainer
	instanceVariableNames: 'fields label formula'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFieldContainer guid: (GUID fromString: '{594b918e-3fce-4e01-b1d3-cd5c467dce44}')!
ILFieldContainer comment: ''!
!ILFieldContainer categoriesForClass!Iliad-More-Formula! !
!ILFieldContainer methodsFor!

addField: aField	^self fields add: aField!

contents	^[:e |		self isEmpty ifFalse: [			self useFieldset ifTrue: [e fieldset legend: self label].			(e div class: 'fields') build: self tableContents]]!

fields 	^fields ifNil: [fields := OrderedCollection new]!

formula	^formula!

formula: aFormula	formula := aFormula!

isEmpty	^ self fields isEmpty!

label 	^label ifNil: ['']!

label: aString	label := aString!

postCopyTo: aFormula	self formula: aFormula.	fields := self fields collect: [:each | 		each copy postCopyTo: self; yourself]!

setFields: aCollection	fields := aCollection!

tableContents	^[:e |		e table tbody build: [:tbody |				self fields do: [:each |					tbody build: each]]]!

useFieldset	^self label notEmpty! !
!ILFieldContainer categoriesFor: #addField:!adding!public! !
!ILFieldContainer categoriesFor: #contents!building!public! !
!ILFieldContainer categoriesFor: #fields!accessing!public! !
!ILFieldContainer categoriesFor: #formula!accessing!public! !
!ILFieldContainer categoriesFor: #formula:!accessing!public! !
!ILFieldContainer categoriesFor: #isEmpty!public!testing! !
!ILFieldContainer categoriesFor: #label!accessing!public! !
!ILFieldContainer categoriesFor: #label:!accessing!public! !
!ILFieldContainer categoriesFor: #postCopyTo:!copying!public! !
!ILFieldContainer categoriesFor: #setFields:!accessing!public! !
!ILFieldContainer categoriesFor: #tableContents!building!public! !
!ILFieldContainer categoriesFor: #useFieldset!public!testing! !

!ILFieldContainer class methodsFor!

on: aFormula label: aString	^self new		formula: aFormula;		label: aString;		yourself! !
!ILFieldContainer class categoriesFor: #on:label:!instance creation!public! !

