"Filed out from Dolphin Smalltalk 7"!

ILBuildable subclass: #ILDecorator
	instanceVariableNames: 'decoratee'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILDecorator guid: (GUID fromString: '{1fa5b997-c8a7-49ab-b012-fbe155d5940f}')!
ILDecorator comment: 'I am a decorator for ILWidgets. I can be added to a widget by calling: #decorateWith: from a widget.Subclasses can be used to modify the building process of a widget, or change its behavior.'!
!ILDecorator categoriesForClass!Iliad-Core-Buildables! !
!ILDecorator methodsFor!

contents	^ self decoratee contents!

decoratee	^decoratee!

decoratee: aDecoratee	decoratee := aDecoratee!

handleAnswer: anAnswer	^ self decoratee handleAnswer: anAnswer!

isDelegator	^ false!

isGlobal	^ false!

removeDecorator: aDecorator	self decoratee removeDecorator: aDecorator!

removeYourself	self decoratee removeDecorator: self!

scripts	^ #()!

styles	^ #()!

updateHead: aHead	self decoratee updateHead: aHead!

widget	^ self decoratee widget! !
!ILDecorator categoriesFor: #contents!building!public! !
!ILDecorator categoriesFor: #decoratee!accessing!public! !
!ILDecorator categoriesFor: #decoratee:!accessing!public! !
!ILDecorator categoriesFor: #handleAnswer:!decorations!public! !
!ILDecorator categoriesFor: #isDelegator!public!testing! !
!ILDecorator categoriesFor: #isGlobal!public!testing! !
!ILDecorator categoriesFor: #removeDecorator:!decorations!public! !
!ILDecorator categoriesFor: #removeYourself!decorations!public! !
!ILDecorator categoriesFor: #scripts!building!public! !
!ILDecorator categoriesFor: #styles!building!public! !
!ILDecorator categoriesFor: #updateHead:!building!public! !
!ILDecorator categoriesFor: #widget!accessing!public! !

!ILDecorator class methodsFor!

decoratee: aDecoratee	^ self basicNew		decoratee: aDecoratee;		initialize;		yourself! !
!ILDecorator class categoriesFor: #decoratee:!instance creation!public! !

