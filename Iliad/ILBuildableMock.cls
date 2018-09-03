"Filed out from Dolphin Smalltalk 7"!

ILBuildable subclass: #ILBuildableMock
	instanceVariableNames: 'rootElement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILBuildableMock guid: (GUID fromString: '{2846ecce-9a52-4afc-bb0d-1504b3ce4909}')!
ILBuildableMock comment: ''!
!ILBuildableMock categoriesForClass!Iliad-Tests-Buildables! !
!ILBuildableMock methodsFor!

build	^self rootElement!

rootElement	^rootElement ifNil: [rootElement := ILElement new]! !
!ILBuildableMock categoriesFor: #build!building!public! !
!ILBuildableMock categoriesFor: #rootElement!accessing!public! !

