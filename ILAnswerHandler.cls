"Filed out from Dolphin Smalltalk 7"!

ILDecorator subclass: #ILAnswerHandler
	instanceVariableNames: 'action'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILAnswerHandler guid: (GUID fromString: '{33c8ac9f-d354-40ad-9586-f0c5ad0b9661}')!
ILAnswerHandler comment: 'I am a special decorator for ILWidgets, used to handle widget answers. See #handleAnswer: and ILWidget>>show:onAnswer: '!
!ILAnswerHandler categoriesForClass!Iliad-Core-Buildables! !
!ILAnswerHandler methodsFor!

action	^ action!

action: anAction	action := anAction!

handleAnswer: anAnswer	self action 			value: anAnswer; 			evaluate! !
!ILAnswerHandler categoriesFor: #action!accessing!public! !
!ILAnswerHandler categoriesFor: #action:!accessing!public! !
!ILAnswerHandler categoriesFor: #handleAnswer:!decorations!public! !

