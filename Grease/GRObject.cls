﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #GRObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRObject guid: (GUID fromString: '{697fe973-5d7c-419e-a8e2-4f4a0f2ebfcd}')!
GRObject comment: 'A common superclass that ensures consistent initialization behaviour on all platforms and provides #error: methods that signal an instance of WAPlatformError.
!GRObject categoriesForClass!Grease-Core! !
!GRObject methodsFor!

error: aString

initialize! !
!GRObject categoriesFor: #error:!error handling!public! !
!GRObject categoriesFor: #initialize!initialization!public! !

!GRObject class methodsFor!

defaultErrorClass

error: aString

new
!GRObject class categoriesFor: #defaultErrorClass!error handling!public! !
!GRObject class categoriesFor: #error:!error handling!public! !
!GRObject class categoriesFor: #new!instance creation!public! !
