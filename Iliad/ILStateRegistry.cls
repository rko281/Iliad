"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILStateRegistry
	instanceVariableNames: 'key states'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILStateRegistry guid: (GUID fromString: '{020e08f0-2c43-4e79-b62a-a41e37732f9c}')!
ILStateRegistry comment: ''!
!ILStateRegistry categoriesForClass!Iliad-Core-Sessions! !
!ILStateRegistry methodsFor!

dirtyChildrenOf: aBuildable	| dirtyWidgets |	dirtyWidgets := OrderedCollection new.	aBuildable children do: [:each | 		(self isWidgetDirty: each)			ifTrue: [dirtyWidgets add: each]			ifFalse: [dirtyWidgets addAll: (self dirtyChildrenOf: each)]].	^dirtyWidgets!

dirtyWidgets	"Answer all widgets which state has changed"		^(self isWidgetDirty: self session application)		ifTrue: [Array with: self session application]		ifFalse: [self dirtyChildrenOf: self session application]!

initialize	super initialize.	key := (ILId new: 8) asString!

isWidgetDirty: aWidget	^(self stateAt: aWidget) ~= aWidget state!

key	^key ifNil: [key := self session nextId]!

register: aWidget	self states at: aWidget put: aWidget state !

setStates: aDictionary	states := aDictionary!

stateAt: aWidget	^self states		at: aWidget		ifAbsent: [aWidget state]!

states 	^states ifNil: [states := Dictionary new]!

unregister: aWidget	self states		removeKey: aWidget		ifAbsent: [nil] !

unregisterAllWidgets	states := nil!

widgets	^self states keys! !
!ILStateRegistry categoriesFor: #dirtyChildrenOf:!public!states! !
!ILStateRegistry categoriesFor: #dirtyWidgets!public!states! !
!ILStateRegistry categoriesFor: #initialize!initialization!public! !
!ILStateRegistry categoriesFor: #isWidgetDirty:!public!testing! !
!ILStateRegistry categoriesFor: #key!accessing!public! !
!ILStateRegistry categoriesFor: #register:!public!states! !
!ILStateRegistry categoriesFor: #setStates:!accessing!public! !
!ILStateRegistry categoriesFor: #stateAt:!accessing!public! !
!ILStateRegistry categoriesFor: #states!public!states! !
!ILStateRegistry categoriesFor: #unregister:!public!states! !
!ILStateRegistry categoriesFor: #unregisterAllWidgets!public!states! !
!ILStateRegistry categoriesFor: #widgets!accessing!public! !

!ILStateRegistry class methodsFor!

fromRegistry: aStateRegistry	^self new		setStates: aStateRegistry states copy;		yourself! !
!ILStateRegistry class categoriesFor: #fromRegistry:!instance creation!public! !

