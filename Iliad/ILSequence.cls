"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILSequence
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILSequence guid: (GUID fromString: '{641d92b6-1710-4981-b3fe-80ab74ebc96e}')!
ILSequence comment: ''!
!ILSequence categoriesForClass!Iliad-Core-Buildables! !
!ILSequence methodsFor!

build	self shouldStart ifTrue: [self start].	^super build!

contents	"Do not override. The purpose of a sequence is to display other buildables"	self shouldNotImplement!

restart	self 		retrieveControl;		markDirty!

shouldStart	^decorator widget = self!

start	"Override this method in subclasses"! !
!ILSequence categoriesFor: #build!building!public! !
!ILSequence categoriesFor: #contents!building!public! !
!ILSequence categoriesFor: #restart!control/flow!public! !
!ILSequence categoriesFor: #shouldStart!public!testing! !
!ILSequence categoriesFor: #start!control/flow!public! !

