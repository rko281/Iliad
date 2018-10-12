"Filed out from Dolphin Smalltalk 7"!

ILField subclass: #ILTextareaField
	instanceVariableNames: 'size'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTextareaField guid: (GUID fromString: '{5eb49764-47a9-4644-aedf-5143c4b9e8a4}')!
ILTextareaField comment: ''!
!ILTextareaField categoriesForClass!Iliad-More-Formula! !
!ILTextareaField methodsFor!

fieldContents	^[:e | 		e textarea build: [:textarea |			self size ifNotNil: [				textarea					cols: self size x;					rows: self size y].			textarea				text: (self value ifNil: ['']);				action: [:val | self value: val]]]!

size	^size!

size: aPoint	size := aPoint! !
!ILTextareaField categoriesFor: #fieldContents!building!public! !
!ILTextareaField categoriesFor: #size!accessing!public! !
!ILTextareaField categoriesFor: #size:!accessing!public! !

