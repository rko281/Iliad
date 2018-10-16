"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILOptionGroupElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILOptionGroupElement guid: (GUID fromString: '{9ebd5f5a-96e4-4436-b59e-291e47491353}')!
ILOptionGroupElement comment: ''!
!ILOptionGroupElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILOptionGroupElement methodsFor!

disabled	self disabled: true!

disabled: aBoolean	aBoolean ifTrue: [		self attributeAt: 'disabled' put: 'disabled']!

label: aString 	self attributeAt: 'label' put: aString!

tag	^ 'optgroup'! !
!ILOptionGroupElement categoriesFor: #disabled!accessing attributes!public! !
!ILOptionGroupElement categoriesFor: #disabled:!accessing attributes!public! !
!ILOptionGroupElement categoriesFor: #label:!accessing attributes!public! !
!ILOptionGroupElement categoriesFor: #tag!accessing!public! !

