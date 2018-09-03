"Filed out from Dolphin Smalltalk 7"!

ILFormElementElement subclass: #ILTextAreaElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTextAreaElement guid: (GUID fromString: '{712f22fa-2469-4809-82d7-4e2d67cdd73c}')!
ILTextAreaElement comment: ''!
!ILTextAreaElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILTextAreaElement methodsFor!

cols: anInteger 	self attributeAt: 'cols' put: anInteger greaseString!

rows: anInteger 	self attributeAt: 'rows' put: anInteger greaseString!

tabindex: anInteger 	self attributeAt: 'tabindex' put: anInteger greaseString!

tag	^ 'textarea'! !
!ILTextAreaElement categoriesFor: #cols:!accessing attributes!public! !
!ILTextAreaElement categoriesFor: #rows:!accessing attributes!public! !
!ILTextAreaElement categoriesFor: #tabindex:!accessing attributes!public! !
!ILTextAreaElement categoriesFor: #tag!accessing!public! !

