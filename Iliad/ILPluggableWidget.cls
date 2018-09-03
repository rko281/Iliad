"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILPluggableWidget
	instanceVariableNames: 'contentsBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILPluggableWidget guid: (GUID fromString: '{583bccd5-d2f6-4ff1-84ca-1c286361a774}')!
ILPluggableWidget comment: ''!
!ILPluggableWidget categoriesForClass!Iliad-Core-Buildables! !
!ILPluggableWidget methodsFor!

contents	^self contentsBlock!

contentsBlock	^contentsBlock ifNil: [[:e |]]!

contentsBlock: aBlock	contentsBlock := aBlock! !
!ILPluggableWidget categoriesFor: #contents!building!public! !
!ILPluggableWidget categoriesFor: #contentsBlock!accessing!public! !
!ILPluggableWidget categoriesFor: #contentsBlock:!accessing!public! !

