"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILCometCounter
	instanceVariableNames: 'counter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCometCounter guid: (GUID fromString: '{d62186d1-0386-49d3-bcf6-2e924add094e}')!
ILCometCounter comment: ''!
!ILCometCounter categoriesForClass!Iliad-More-CometExample! !
!ILCometCounter methodsFor!

contents	^[:e |		e h1: counter count printString.		e a action: [self increase]; text: '++'.		e a action: [self decrease]; text: '--'] !

decrease	counter decrease.	self markDirty.	self triggerCometEvent: ILCometCounterChangedEvent new!

increase	counter increase.	self markDirty.	self triggerCometEvent: ILCometCounterChangedEvent new!

initialize	super initialize.	counter := ILCometCounterModel instance.	self subscribeToCometEvent: ILCometCounterChangedEvent! !
!ILCometCounter categoriesFor: #contents!private! !
!ILCometCounter categoriesFor: #decrease!private! !
!ILCometCounter categoriesFor: #increase!private! !
!ILCometCounter categoriesFor: #initialize!private! !

