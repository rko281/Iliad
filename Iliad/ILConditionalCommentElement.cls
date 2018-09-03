"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILConditionalCommentElement
	instanceVariableNames: 'conditions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILConditionalCommentElement guid: (GUID fromString: '{8115356a-4746-4ec7-a204-808ea7929a39}')!
ILConditionalCommentElement comment: ''!
!ILConditionalCommentElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILConditionalCommentElement methodsFor!

conditions	^conditions ifNil: [conditions := OrderedCollection new]!

gt	"Greater than"	self conditions add: 'gt'!

ie	self conditions add: 'IE'!

ie5	self conditions add: 'IE 5'!

ie50	self conditions add: 'IE 5.0'!

ie55	self conditions add: 'IE 5.5'!

ie6	self conditions add: 'IE 6'!

ie7	self conditions add: 'IE 7'!

ie8	self conditions add: 'IE 8'!

lt	"Less than"	self conditions add: 'lt'!

not	"Not"	self conditions add: '!!'!

onEvent: event add: aString	self doesNotUnderstandAttribute: 'on', event!

printCloseTagOn: aStream			aStream nextPutAll: '<!![endif]-->'	!

printOpenTagOn: aStream	aStream nextPutAll: '<!!--[if '.	self conditions		do: [:each | aStream nextPutAll: each]		separatedBy: [aStream nextPut: Character space].		aStream nextPutAll: ']>'	! !
!ILConditionalCommentElement categoriesFor: #conditions!accessing!public! !
!ILConditionalCommentElement categoriesFor: #gt!accessing!public! !
!ILConditionalCommentElement categoriesFor: #ie!accessing!public! !
!ILConditionalCommentElement categoriesFor: #ie5!accessing!public! !
!ILConditionalCommentElement categoriesFor: #ie50!accessing!public! !
!ILConditionalCommentElement categoriesFor: #ie55!accessing!public! !
!ILConditionalCommentElement categoriesFor: #ie6!accessing!public! !
!ILConditionalCommentElement categoriesFor: #ie7!accessing!public! !
!ILConditionalCommentElement categoriesFor: #ie8!accessing!public! !
!ILConditionalCommentElement categoriesFor: #lt!accessing!public! !
!ILConditionalCommentElement categoriesFor: #not!accessing!public! !
!ILConditionalCommentElement categoriesFor: #onEvent:add:!accessing attributes/events!public! !
!ILConditionalCommentElement categoriesFor: #printCloseTagOn:!accessing!public! !
!ILConditionalCommentElement categoriesFor: #printOpenTagOn:!accessing!public! !

