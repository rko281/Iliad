"Filed out from Dolphin Smalltalk 7"!

ILDecorator subclass: #ILMessageDecorator
	instanceVariableNames: 'message'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILMessageDecorator guid: (GUID fromString: '{28ce1040-62eb-4f6d-a8bf-f0e8c7d33b2b}')!
ILMessageDecorator comment: ''!
!ILMessageDecorator categoriesForClass!Iliad-More-UI! !
!ILMessageDecorator methodsFor!

contents	^[:e |		e build: self message.		e build: self decoratee contents]!

isGlobal	^true!

message	^message!

message: aBlock	message := aBlock! !
!ILMessageDecorator categoriesFor: #contents!building!public! !
!ILMessageDecorator categoriesFor: #isGlobal!public!testing! !
!ILMessageDecorator categoriesFor: #message!accessing!public! !
!ILMessageDecorator categoriesFor: #message:!accessing!public! !

