"Filed out from Dolphin Smalltalk 7"!

ILDelegator subclass: #ILAppendDelegator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILAppendDelegator guid: (GUID fromString: '{a61c10fb-3690-460d-bc83-9387a88ae492}')!
ILAppendDelegator comment: ''!
!ILAppendDelegator categoriesForClass!Iliad-Core-Buildables! !
!ILAppendDelegator methodsFor!

contents	^[:e | e 		build: self decoratee contents;		build: super contents]! !
!ILAppendDelegator categoriesFor: #contents!building!public! !

