"Filed out from Dolphin Smalltalk 7"!

ILOptionField subclass: #ILMultipleCheckboxField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILMultipleCheckboxField guid: (GUID fromString: '{eabb63ad-26f0-445a-a346-027bb0a8b114}')!
ILMultipleCheckboxField comment: ''!
!ILMultipleCheckboxField categoriesForClass!Iliad-More-Formula! !
!ILMultipleCheckboxField methodsFor!

fieldContents	^[:e |		self options do:[:each |			e checkbox 				checked: (self value includes: each);				action: [:boolean | 					boolean 					ifTrue: [self add: each]					ifFalse: [self remove: each]].				e space.				self optionLabelBlock value: e value: each]			separatedBy: [e br]]! !
!ILMultipleCheckboxField categoriesFor: #fieldContents!building!public! !

