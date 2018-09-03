"Filed out from Dolphin Smalltalk 7"!

ILField subclass: #ILFileInputField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileInputField guid: (GUID fromString: '{be786fac-c61f-45ad-a59f-0a21abdf2f3e}')!
ILFileInputField comment: ''!
!ILFileInputField categoriesForClass!Iliad-More-Formula! !
!ILFileInputField methodsFor!

fieldContents	^[:e |		(self value isNil or: [self value isString]) 			ifTrue: [e build: self uploadContents]			ifFalse: [e build: self fileContents]]!

fileContents	^[:e |				e text: self value fileName]!

isMultipart 	^true!

uploadContents	^[:e |		e file action: [:val | self value: val]]! !
!ILFileInputField categoriesFor: #fieldContents!building!public! !
!ILFileInputField categoriesFor: #fileContents!building!public! !
!ILFileInputField categoriesFor: #isMultipart!public!testing! !
!ILFileInputField categoriesFor: #uploadContents!building!public! !

