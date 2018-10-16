"Filed out from Dolphin Smalltalk 7"!

GRError subclass: #ILAttributeNotUnderstood
	instanceVariableNames: 'element attribute'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILAttributeNotUnderstood guid: (GUID fromString: '{10e17843-2247-40fa-8797-6a1aad434fcf}')!
ILAttributeNotUnderstood comment: ''!
!ILAttributeNotUnderstood categoriesForClass!Iliad-Core-Elements! !
!ILAttributeNotUnderstood methodsFor!

attribute	^attribute!

attribute: anObject	attribute := anObject!

defaultAction!

element	^element!

element: anElement	element := anElement!

isResumable	^true!

messageText	^'Tag ''{1}'' does not understand attribute ''{2}''' format: {self element tag. self attribute}! !
!ILAttributeNotUnderstood categoriesFor: #attribute!accessing!public! !
!ILAttributeNotUnderstood categoriesFor: #attribute:!accessing!public! !
!ILAttributeNotUnderstood categoriesFor: #defaultAction!exceptionDescription!public! !
!ILAttributeNotUnderstood categoriesFor: #element!accessing!public! !
!ILAttributeNotUnderstood categoriesFor: #element:!accessing!public! !
!ILAttributeNotUnderstood categoriesFor: #isResumable!exceptionDescription!public! !
!ILAttributeNotUnderstood categoriesFor: #messageText!printing!public! !

!ILAttributeNotUnderstood class methodsFor!

element: anElement attribute: aString	^(self new)		element: anElement;		attribute: aString;		yourself! !
!ILAttributeNotUnderstood class categoriesFor: #element:attribute:!instance creation!public! !

