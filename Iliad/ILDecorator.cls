﻿"Filed out from Dolphin Smalltalk 7"!

ILBuildable subclass: #ILDecorator
	instanceVariableNames: 'decoratee'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILDecorator guid: (GUID fromString: '{1fa5b997-c8a7-49ab-b012-fbe155d5940f}')!
ILDecorator comment: 'I am a decorator for ILWidgets. I can be added to a widget by calling: #decorateWith: from a widget.
!ILDecorator categoriesForClass!Iliad-Core-Buildables! !
!ILDecorator methodsFor!

contents

decoratee

decoratee: aDecoratee

handleAnswer: anAnswer

isDelegator

isGlobal

removeDecorator: aDecorator

removeYourself

scripts

styles

updateHead: aHead

widget
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

decoratee: aDecoratee
!ILDecorator class categoriesFor: #decoratee:!instance creation!public! !
