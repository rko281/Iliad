"Filed out from Dolphin Smalltalk 7"!

ILField subclass: #ILCheckboxField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCheckboxField guid: (GUID fromString: '{2ff6c87f-d469-4d3d-ae07-c20b13ca0388}')!
ILCheckboxField comment: ''!
!ILCheckboxField categoriesForClass!Iliad-More-Formula! !
!ILCheckboxField methodsFor!

fieldContents	^[:e | 		e checkbox			checked: (self value ifNil: [false]);			action: [:boolean | self value: boolean]]! !
!ILCheckboxField categoriesFor: #fieldContents!accessing!public! !

