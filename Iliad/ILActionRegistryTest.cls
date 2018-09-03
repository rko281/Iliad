"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILActionRegistryTest
	instanceVariableNames: 'registry'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILActionRegistryTest guid: (GUID fromString: '{3798f1bd-debc-4304-899b-6bab9b89bf9e}')!
ILActionRegistryTest comment: ''!
!ILActionRegistryTest categoriesForClass!Iliad-Tests-Sessions! !
!ILActionRegistryTest methodsFor!

setUp	registry := ILActionRegistry new.!

testEvaluating	| action1 action2 |	action1 := ILAction new		block: [ #action1 ];		key: ILId new;		yourself.	action2 := ILAction new		block: [ #action2 ];		key: ILId new;		yourself.	registry		register: action1;		register: action2.	self		assert: (registry evaluateActionKey: action1 key)		equals: #action1.	self		assert: (registry evaluateActionKey: action2 key)		equals: #action2.	self assert: (registry evaluateActionKey: ILId new) equals: nil!

testRegistering	| action1 action2 |	action1 := ILAction new		key: ILId new;		yourself.	action2 := ILAction new		key: ILId new;		yourself.	registry		register: action1;		register: action2.	self assert: (registry actions includes: action1).	self assert: (registry actions includes: action2).	self assert: registry actions size equals: 2.	registry unregister: action1.	self deny: (registry actions includes: action1).	registry unregisterAllActions.	self assert: registry actions size equals: 0! !
!ILActionRegistryTest categoriesFor: #setUp!public!running! !
!ILActionRegistryTest categoriesFor: #testEvaluating!public!testing! !
!ILActionRegistryTest categoriesFor: #testRegistering!public!testing! !

