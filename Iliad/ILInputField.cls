"Filed out from Dolphin Smalltalk 7"!

ILField subclass: #ILInputField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILInputField guid: (GUID fromString: '{5fbf05ff-fa52-4947-9c33-c38f7f150d04}')!
ILInputField comment: ''!
!ILInputField categoriesForClass!Iliad-More-Formula! !
!ILInputField methodsFor!

fieldContents	^[:e | 		e input 			value: (self value ifNil: ['']);			action: [:val | self value: val]]! !
!ILInputField categoriesFor: #fieldContents!accessing!public! !

