﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILPlatform
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'current'!
ILPlatform guid: (GUID fromString: '{0e07c29c-3faf-4876-9dbb-a65d6620898e}')!
ILPlatform comment: ''!
!ILPlatform categoriesForClass!Iliad-Core-Platform! !
!ILPlatform methodsFor!

categoryOfSelector: aSelector inClass: aClass

getStreamPosition: aStream

openDebuggerOn: anError

setStreamPosition: anInteger of: aStream
!ILPlatform categoriesFor: #categoryOfSelector:inClass:!public!utilities! !
!ILPlatform categoriesFor: #getStreamPosition:!public!utilities! !
!ILPlatform categoriesFor: #openDebuggerOn:!debugging!public! !
!ILPlatform categoriesFor: #setStreamPosition:of:!public!utilities! !

!ILPlatform class methodsFor!

current

current: anILPlatform

isConcrete

setCurrent
!ILPlatform class categoriesFor: #current!accessing!public! !
!ILPlatform class categoriesFor: #current:!accessing!public! !
!ILPlatform class categoriesFor: #isConcrete!public!testing! !
!ILPlatform class categoriesFor: #setCurrent!initialization!public! !
