﻿"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILStateRegistry
	instanceVariableNames: 'key states'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILStateRegistry guid: (GUID fromString: '{020e08f0-2c43-4e79-b62a-a41e37732f9c}')!
ILStateRegistry comment: ''!
!ILStateRegistry categoriesForClass!Iliad-Core-Sessions! !
!ILStateRegistry methodsFor!

dirtyChildrenOf: aBuildable

dirtyWidgets

initialize

isWidgetDirty: aWidget

key

register: aWidget

setStates: aDictionary

stateAt: aWidget

states 

unregister: aWidget

unregisterAllWidgets

widgets
!ILStateRegistry categoriesFor: #dirtyChildrenOf:!public!states! !
!ILStateRegistry categoriesFor: #dirtyWidgets!public!states! !
!ILStateRegistry categoriesFor: #initialize!initialization!public! !
!ILStateRegistry categoriesFor: #isWidgetDirty:!public!testing! !
!ILStateRegistry categoriesFor: #key!accessing!public! !
!ILStateRegistry categoriesFor: #register:!public!states! !
!ILStateRegistry categoriesFor: #setStates:!accessing!public! !
!ILStateRegistry categoriesFor: #stateAt:!accessing!public! !
!ILStateRegistry categoriesFor: #states!public!states! !
!ILStateRegistry categoriesFor: #unregister:!public!states! !
!ILStateRegistry categoriesFor: #unregisterAllWidgets!public!states! !
!ILStateRegistry categoriesFor: #widgets!accessing!public! !

!ILStateRegistry class methodsFor!

fromRegistry: aStateRegistry
!ILStateRegistry class categoriesFor: #fromRegistry:!instance creation!public! !
