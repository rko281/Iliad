"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILDetailsElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILDetailsElement guid: (GUID fromString: '{c1b6f9f2-3155-4451-93f7-3cd4676c0c04}')!
ILDetailsElement comment: 'The details element represents a control from which the user can obtain additional information or controls on-demand.'!
!ILDetailsElement categoriesForClass!Iliad-More-HTML5Elements! !
!ILDetailsElement methodsFor!

open: aBoolean	"Specifies that the contents of the details element should be shown to the user"		aBoolean ifTrue: [		self attributeAt: 'open' put: 'open']!

tag	^'details'	! !
!ILDetailsElement categoriesFor: #open:!accessing attributes!public! !
!ILDetailsElement categoriesFor: #tag!accessing!public! !

