"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILCometConnectionWidget
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCometConnectionWidget guid: (GUID fromString: '{074ff2fe-6d86-4bb4-a37c-b561a4b710c1}')!
ILCometConnectionWidget comment: ''!
!ILCometConnectionWidget categoriesForClass!Iliad-More-Comet! !
!ILCometConnectionWidget methodsFor!

contents	^[:e || action |		action := self session registerActionFor: [self push].		e script: 'jQuery(document).ready(function() {iliad.evaluateAction("', (self context urlBuilder urlForAction: action) greaseString, '", "get", "", false)})']!

handler	^self session cometHandler!

push	self handler waitForEvent.	self markDirty! !
!ILCometConnectionWidget categoriesFor: #contents!building!public! !
!ILCometConnectionWidget categoriesFor: #handler!accessing!public! !
!ILCometConnectionWidget categoriesFor: #push!actions!public! !

