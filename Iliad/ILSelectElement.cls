"Filed out from Dolphin Smalltalk 7"!

ILFormElementElement subclass: #ILSelectElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILSelectElement guid: (GUID fromString: '{9eab368b-242e-4fc9-8aca-e7ad47a22043}')!
ILSelectElement comment: ''!
!ILSelectElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILSelectElement methodsFor!

action: aBlock	self shouldNotImplement!

beMultiple	self attributeAt: 'multiple' put: 'multiple'!

initialize	super initialize.	super action: [:val | 		val do: [:each |			self session evaluateActionKey: each]]!

size: anInteger 	self attributeAt: 'size' put: anInteger greaseString!

tag	^'select'! !
!ILSelectElement categoriesFor: #action:!accessing attributes!public! !
!ILSelectElement categoriesFor: #beMultiple!accessing attributes!public! !
!ILSelectElement categoriesFor: #initialize!initialize/release!public! !
!ILSelectElement categoriesFor: #size:!accessing attributes!public! !
!ILSelectElement categoriesFor: #tag!accessing!public! !

