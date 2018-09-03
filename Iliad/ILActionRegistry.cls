﻿"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILActionRegistry
	instanceVariableNames: 'actions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILActionRegistry guid: (GUID fromString: '{e615f3d6-85f6-4bbc-8834-0cb7ec8ecec0}')!
ILActionRegistry comment: 'I implement a registry of actions.
!ILActionRegistry categoriesForClass!Iliad-Core-Sessions! !
!ILActionRegistry methodsFor!

actionAt: aKey

actions

evaluateActionKey: aString

register: anAction

size

unregister: anAction

unregisterAllActions
!ILActionRegistry categoriesFor: #actionAt:!accessing!public! !
!ILActionRegistry categoriesFor: #actions!accessing!public! !
!ILActionRegistry categoriesFor: #evaluateActionKey:!actions!public! !
!ILActionRegistry categoriesFor: #register:!actions!public! !
!ILActionRegistry categoriesFor: #size!accessing!public! !
!ILActionRegistry categoriesFor: #unregister:!actions!public! !
!ILActionRegistry categoriesFor: #unregisterAllActions!actions!public! !

!ILActionRegistry class methodsFor!

owner: aWidget
!ILActionRegistry class categoriesFor: #owner:!instance creation!public! !
