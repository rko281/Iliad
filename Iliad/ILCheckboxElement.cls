"Filed out from Dolphin Smalltalk 7"!

ILFormElementElement subclass: #ILCheckboxElement
	instanceVariableNames: 'value hiddenAction'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCheckboxElement guid: (GUID fromString: '{d92312ce-ba9b-42e4-b251-637ab094bb71}')!
ILCheckboxElement comment: ''!
!ILCheckboxElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILCheckboxElement methodsFor!

action: aBlock	| action |	hiddenAction := aBlock fixActionTemps.	value := false.	action := self session registerActionFor: [:val | value := true].	self name: action key.	self addHiddenInput!

addHiddenInput	self input 		beHidden; 		action: [:val | hiddenAction value: value. value := false]!

beChecked	self checked: true!

beforePrintHtml	self attributeAt: 'type' put: 'checkbox'!

checked: aBoolean 	aBoolean ifTrue: [		self attributeAt: 'checked' put: 'checked']!

tag	^ 'input'! !
!ILCheckboxElement categoriesFor: #action:!accessing attributes!public! !
!ILCheckboxElement categoriesFor: #addHiddenInput!private! !
!ILCheckboxElement categoriesFor: #beChecked!accessing attributes!public! !
!ILCheckboxElement categoriesFor: #beforePrintHtml!printing!public! !
!ILCheckboxElement categoriesFor: #checked:!accessing attributes!public! !
!ILCheckboxElement categoriesFor: #tag!accessing!public! !

