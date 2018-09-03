"Filed out from Dolphin Smalltalk 7"!

ILPlatform subclass: #ILDolphinPlatform
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILDolphinPlatform guid: (GUID fromString: '{273feeb1-53d9-4353-8cca-99933c47cf94}')!
ILDolphinPlatform comment: ''!
!ILDolphinPlatform categoriesForClass!Iliad-Core-Platform! !
!ILDolphinPlatform methodsFor!

categoryOfSelector: aSelector inClass: aClass

	| cls all |

	cls := aClass.	[all := cls whichNonVirtualCategoriesIncludeSelector: aSelector.
	all isEmpty and: [cls superclass notNil]] whileTrue: [cls := cls superclass].

	^(all isEmpty
		ifTrue: [MethodCategory unclassifiedName allButFirst: 2 "drop virtual category prefix chars"]
		ifFalse: [all anyOne name]) asSymbol!

convertStringToNumber: aString
	^(aString copyReplaceAll: ',' with: '.') asNumber!

getStreamPosition: aStream
	^aStream position!

setStreamPosition: anInteger of: aStream
	^aStream position: anInteger! !
!ILDolphinPlatform categoriesFor: #categoryOfSelector:inClass:!public!utilities! !
!ILDolphinPlatform categoriesFor: #convertStringToNumber:!public!utilities! !
!ILDolphinPlatform categoriesFor: #getStreamPosition:!public!utilities! !
!ILDolphinPlatform categoriesFor: #setStreamPosition:of:!public!utilities! !

!ILDolphinPlatform class methodsFor!

initialize

	self setCurrent!

isConcrete	^true! !
!ILDolphinPlatform class categoriesFor: #initialize!class initialization!public! !
!ILDolphinPlatform class categoriesFor: #isConcrete!public!testing! !

