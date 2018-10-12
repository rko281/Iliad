"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILHeadElement
	instanceVariableNames: 'title'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILHeadElement guid: (GUID fromString: '{51c485e5-5e03-4879-9b39-1e6cbe7221f2}')!
ILHeadElement comment: ''!
!ILHeadElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILHeadElement methodsFor!

beforePrintHtml	title ifNotNil: [self add: (ILTitleElement new text: title; yourself)].	self meta 		httpEquiv: 'Content-Type'; 		content: self contentType!

onEvent: event add: aString 	self doesNotUnderstandAttribute: 'on', event!

profile: aString 	self attributeAt: 'profile' put: aString!

profiles: aCollection 	| profiles |	profiles := WriteStream on: String new.	aCollection 		do: [ :each | profiles nextPutAll: each ]		separatedBy: [ profiles nextPutAll: ' ' ].	self attributeAt: 'profile' put: profiles contents!

style	^self add: (ILTextElement new		tag: 'style';		attributeAt: 'type' put: 'text/css';		yourself)!

style: aString	^self style		contents: aString;		yourself!

tag	^ 'head'!

title	^title ifNil: ['']!

title: aString	title := aString! !
!ILHeadElement categoriesFor: #beforePrintHtml!printing!public! !
!ILHeadElement categoriesFor: #onEvent:add:!accessing attributes/events!public! !
!ILHeadElement categoriesFor: #profile:!accessing attributes!public! !
!ILHeadElement categoriesFor: #profiles:!accessing attributes!public! !
!ILHeadElement categoriesFor: #style!adding/conveniance!public! !
!ILHeadElement categoriesFor: #style:!adding/conveniance!public! !
!ILHeadElement categoriesFor: #tag!accessing!public! !
!ILHeadElement categoriesFor: #title!accessing attributes!public! !
!ILHeadElement categoriesFor: #title:!accessing attributes!public! !

