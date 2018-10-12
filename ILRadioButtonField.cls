"Filed out from Dolphin Smalltalk 7"!

ILField subclass: #ILRadioButtonField
	instanceVariableNames: 'groupName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRadioButtonField guid: (GUID fromString: '{99374c85-8910-4402-9162-cbff93ec35ac}')!
ILRadioButtonField comment: ''!
!ILRadioButtonField categoriesForClass!Iliad-More-Formula! !
!ILRadioButtonField methodsFor!

fieldContents	^ [ : e | 		e radio			selected: (self value ifNil: [ false ]);			onClickDo: [ self value isNil 								ifTrue: [ self value: true ]								ifFalse: [ self value: self value not ] ];			name: self groupName ]!

groupName	^ groupName		ifNil: [ groupName := 'ILGroupName_unique' ]!

groupName: anObject	groupName := anObject! !
!ILRadioButtonField categoriesFor: #fieldContents!accessing!public! !
!ILRadioButtonField categoriesFor: #groupName!accessing!public! !
!ILRadioButtonField categoriesFor: #groupName:!accessing!public! !

