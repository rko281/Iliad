"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILCometCounterModel
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'instance'!
ILCometCounterModel guid: (GUID fromString: '{ad047b60-93d1-451a-a483-b33679d127fe}')!
ILCometCounterModel comment: ''!
!ILCometCounterModel categoriesForClass!Iliad-More-CometExample! !
!ILCometCounterModel methodsFor!

count	^count!

decrease	count := count - 1!

increase	count := count + 1!

initialize	super initialize.	count := 0! !
!ILCometCounterModel categoriesFor: #count!private! !
!ILCometCounterModel categoriesFor: #decrease!private! !
!ILCometCounterModel categoriesFor: #increase!private! !
!ILCometCounterModel categoriesFor: #initialize!private! !

!ILCometCounterModel class methodsFor!

instance	instance ifNil: [instance := self new].	^instance	! !
!ILCometCounterModel class categoriesFor: #instance!private! !

