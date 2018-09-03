"Filed out from Dolphin Smalltalk 7"!

ILElementTest subclass: #ILRSSGuidElementTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSGuidElementTest guid: (GUID fromString: '{f3f29e44-7bc5-43eb-9614-2ba998392209}')!
ILRSSGuidElementTest comment: ''!
!ILRSSGuidElementTest categoriesForClass!Iliad-Tests-RSS! !
!ILRSSGuidElementTest methodsFor!

setUp	e := ILRSSGuidElement new!

testIsPermaLink	e isPermaLink: true.	self shouldHaveAttribute: 'isPermaLink' value: 'true'!

testTag	self assert: e tag equals: 'guid'! !
!ILRSSGuidElementTest categoriesFor: #setUp!public!running! !
!ILRSSGuidElementTest categoriesFor: #testIsPermaLink!public!testing! !
!ILRSSGuidElementTest categoriesFor: #testTag!public!testing! !

