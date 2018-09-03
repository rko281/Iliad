"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILActionRegistry
	instanceVariableNames: 'actions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILActionRegistry guid: (GUID fromString: '{e615f3d6-85f6-4bbc-8834-0cb7ec8ecec0}')!
ILActionRegistry comment: 'I implement a registry of actions.'!
!ILActionRegistry categoriesForClass!Iliad-Core-Sessions! !
!ILActionRegistry methodsFor!

actionAt: aKey	" Answer the receciver's action identified by aKey, or nil if not found "	^ self actions 		at: aKey 		ifAbsent: [ nil ]!

actions	" Answer a <Collection> of receiver's action mappings "	^ actions 		ifNil: [ actions := Dictionary new ]!

evaluateActionKey: aString	| action |	action := self actionAt: aString.	^ action ifNil: [ nil ] ifNotNil: [ :arg | action evaluate ]!

register: anAction	self actions at: anAction key put: anAction!

size	" Answer how many actions the receiver has registered "		^ self actions size!

unregister: anAction	self actions 		removeKey: anAction key 		ifAbsent: [ nil ]!

unregisterAllActions	" Reset all receiver's actions "	actions := nil! !
!ILActionRegistry categoriesFor: #actionAt:!accessing!public! !
!ILActionRegistry categoriesFor: #actions!accessing!public! !
!ILActionRegistry categoriesFor: #evaluateActionKey:!actions!public! !
!ILActionRegistry categoriesFor: #register:!actions!public! !
!ILActionRegistry categoriesFor: #size!accessing!public! !
!ILActionRegistry categoriesFor: #unregister:!actions!public! !
!ILActionRegistry categoriesFor: #unregisterAllActions!actions!public! !

!ILActionRegistry class methodsFor!

owner: aWidget	^self basicNew		owner: aWidget;		initialize;		yourself! !
!ILActionRegistry class categoriesFor: #owner:!instance creation!public! !

