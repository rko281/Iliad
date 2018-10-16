"Filed out from Dolphin Smalltalk 7"!

ILField subclass: #ILPasswordField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILPasswordField guid: (GUID fromString: '{ab4539b4-dd41-4f6f-b0bb-f2d1765311ff}')!
ILPasswordField comment: ''!
!ILPasswordField categoriesForClass!Iliad-More-Formula! !
!ILPasswordField methodsFor!

fieldContents	^[:e | 		e password			value: (self value ifNil: ['']);			action: [:val | self value: val]]	! !
!ILPasswordField categoriesFor: #fieldContents!accessing!public! !

