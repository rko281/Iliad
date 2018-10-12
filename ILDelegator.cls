"Filed out from Dolphin Smalltalk 7"!

ILDecorator subclass: #ILDelegator
	instanceVariableNames: 'widget'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILDelegator guid: (GUID fromString: '{7bf7282e-a70a-4006-85af-8b417cadf4a5}')!
ILDelegator comment: ''!
!ILDelegator categoriesForClass!Iliad-Core-Buildables! !
!ILDelegator methodsFor!

contents	^self widget!

handleAnswer: anAnswer	self widget handleAnswer: anAnswer!

isDelegator	^true!

isGlobal	^true!

newRootElement	^self widget newRootElement!

updateHead: aHead	"do nothing. the widget will be in builtWidget and will have a chance to update the HEAD"!

widget	^widget!

widget: aWidget	widget := aWidget! !
!ILDelegator categoriesFor: #contents!building!public! !
!ILDelegator categoriesFor: #handleAnswer:!decorations!public! !
!ILDelegator categoriesFor: #isDelegator!public!testing! !
!ILDelegator categoriesFor: #isGlobal!public!testing! !
!ILDelegator categoriesFor: #newRootElement!accessing!public! !
!ILDelegator categoriesFor: #updateHead:!building!public! !
!ILDelegator categoriesFor: #widget!accessing!public! !
!ILDelegator categoriesFor: #widget:!accessing!public! !

