"Filed out from Dolphin Smalltalk 7"!

ILDelegator subclass: #ILPrependDelegator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILPrependDelegator guid: (GUID fromString: '{b25d97b1-0768-498a-96e2-0693f7e3c67f}')!
ILPrependDelegator comment: ''!
!ILPrependDelegator categoriesForClass!Iliad-Core-Buildables! !
!ILPrependDelegator methodsFor!

contents	^[:e | e  		build: super contents;		build: self decoratee contents]! !
!ILPrependDelegator categoriesFor: #contents!building!public! !

