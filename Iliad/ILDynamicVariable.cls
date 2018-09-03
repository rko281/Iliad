"Filed out from Dolphin Smalltalk 7"!

GRNotification subclass: #ILDynamicVariable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILDynamicVariable guid: (GUID fromString: '{c15677c7-14c8-4561-8517-01210cd2212d}')!
ILDynamicVariable comment: ''!
!ILDynamicVariable categoriesForClass!Iliad-Core-Utilities! !
!ILDynamicVariable methodsFor!

defaultAction	^self class defaultValue! !
!ILDynamicVariable categoriesFor: #defaultAction!defaults!public! !

!ILDynamicVariable class methodsFor!

defaultValue	^ nil!

use: anObject during: aBlock	^aBlock on: self do: [:notification | notification resume: anObject]!

value	^self signal! !
!ILDynamicVariable class categoriesFor: #defaultValue!defaults!public! !
!ILDynamicVariable class categoriesFor: #use:during:!evaluating!public! !
!ILDynamicVariable class categoriesFor: #value!evaluating!public! !

