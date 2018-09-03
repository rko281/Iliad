"Filed out from Dolphin Smalltalk 7"!

ILField subclass: #ILOptionField
	instanceVariableNames: 'options optionLabelBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILOptionField guid: (GUID fromString: '{4e13bc4b-4f0a-4bdc-88de-d139619c95ac}')!
ILOptionField comment: ''!
!ILOptionField categoriesForClass!Iliad-More-Formula! !
!ILOptionField methodsFor!

add: anObject	(self value includes: anObject) ifTrue: [^self].	self value: ((OrderedCollection withAll: self value)		add: anObject;		yourself)!

defaultOptionLabelBlock	^[:e :option | 		e text: (option isString			ifTrue: [option]			ifFalse: [option greaseString])]!

isMultiple	^true!

optionLabelBlock	^optionLabelBlock ifNil: [self defaultOptionLabelBlock]!

optionLabelBlock: aBlock	optionLabelBlock := aBlock!

options	^options ifNil: [{}]!

options: aCollection	options := aCollection!

options: aCollection labelContents: aBlock	self options: aCollection.	self optionLabelBlock: aBlock!

options: aCollection labels: aBlock	self 		options: aCollection		labelContents: [:e :option |			e text: (aBlock value: option)]!

remove: anObject	(self value includes: anObject) ifFalse: [^self].		self value: (self value			remove: anObject;			yourself)!

value	^(super value isNil and: [self isMultiple]) 		ifTrue:[OrderedCollection new]		ifFalse: [super value]! !
!ILOptionField categoriesFor: #add:!accessing!public! !
!ILOptionField categoriesFor: #defaultOptionLabelBlock!defaults!public! !
!ILOptionField categoriesFor: #isMultiple!public!testing! !
!ILOptionField categoriesFor: #optionLabelBlock!accessing!public! !
!ILOptionField categoriesFor: #optionLabelBlock:!accessing!public! !
!ILOptionField categoriesFor: #options!accessing!public! !
!ILOptionField categoriesFor: #options:!accessing!public! !
!ILOptionField categoriesFor: #options:labelContents:!accessing!public! !
!ILOptionField categoriesFor: #options:labels:!accessing!public! !
!ILOptionField categoriesFor: #remove:!accessing!public! !
!ILOptionField categoriesFor: #value!accessing!public! !

