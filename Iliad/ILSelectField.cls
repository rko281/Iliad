"Filed out from Dolphin Smalltalk 7"!

ILOptionField subclass: #ILSelectField
	instanceVariableNames: 'multiple'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILSelectField guid: (GUID fromString: '{29946afa-d6ab-4288-950c-5786d6fbd158}')!
ILSelectField comment: ''!
!ILSelectField categoriesForClass!Iliad-More-Formula! !
!ILSelectField methodsFor!

fieldContents	^[:e | 		e select build: [:select |			self isMultiple ifTrue: [select beMultiple].			self options do: [:each | 				select option					build:  [:option |						option selected: (self isMultiple							ifTrue: [self value includes: each]							ifFalse: [self value = each]).						self optionLabelBlock value: option value: each.						option action: [self isMultiple							ifFalse: [self value: each]						ifTrue: [self add: each]]]]]]!

isMultiple	^self multiple!

multiple	^multiple ifNil: [false]!

multiple: aBoolean	multiple := aBoolean! !
!ILSelectField categoriesFor: #fieldContents!building!public! !
!ILSelectField categoriesFor: #isMultiple!public!testing! !
!ILSelectField categoriesFor: #multiple!accessing!public! !
!ILSelectField categoriesFor: #multiple:!accessing!public! !

