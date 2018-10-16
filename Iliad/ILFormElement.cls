"Filed out from Dolphin Smalltalk 7"!

ILHTMLBuilderElement subclass: #ILFormElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFormElement guid: (GUID fromString: '{0af5b486-da6c-44f8-9e4a-b0c548de1c99}')!
ILFormElement comment: ''!
!ILFormElement categoriesForClass!Iliad-Core-HTMLElements! !
!ILFormElement methodsFor!

accept: aString 	self attributeAt: 'accept' put: aString!

acceptCharset: aString 	self attributeAt: 'accept-charset' put: aString!

acceptCharsets: aCollection	| encodings |	encodings := WriteStream on: String new.	aCollection		do: [:each | encodings nextPutAll: each]		separatedBy: [encodings nextPutAll: ' '].	self acceptCharset: encodings contents!

accepts: aCollection	| contentTypes |	contentTypes := WriteStream on: String new.	aCollection		do: [:each | contentTypes nextPutAll: each]		separatedBy: [contentTypes nextPutAll: ' '].	self accept: contentTypes contents!

addHiddenParameters 	self context urlBuilder baseUrl parameters keysAndValuesDo: [:key :value |		self input			beHidden			name: key;			value: value].	self input		beHidden;		name: self context urlBuilder stateKey;		value: self session stateRegistry key.	self isMultipart ifTrue: [		self input			beHidden;			name: '_callback';			value: (self context urlBuilder urlForAction: (self session registerActionFor: [])) greaseString]!

beforePrintHtml	self attributeAt: 'action' ifAbsentPut: [self context baseUrl greaseString].	self attributeAt: 'method' ifAbsent: [self usePost].	self attributeAt: 'accept-charset' ifAbsentPut: [self session charset].	self addHiddenParameters!

beMultipart	self enctype: self class multipartFormData!

enctype 	^self attributeAt: 'enctype'!

enctype: aString 	self attributeAt: 'enctype' put: aString!

isMultipart	^self enctype = self class multipartFormData!

multipart: aBoolean	aBoolean ifTrue: [self beMultipart]!

onReset: aString	self onEvent: 'reset' add: aString!

onResetDo: ablock	self onEvent: 'reset' do: ablock !

onSubmit: aString	self onEvent: 'submit' add: aString!

onSubmitDo: aBlock	self onEvent: 'submit' do: aBlock!

tag	^ 'form'!

url	^self context baseUrl greaseString!

useGet	self attributeAt: 'method' put: 'get'!

usePost	self attributeAt: 'method' put: 'post'! !
!ILFormElement categoriesFor: #accept:!accessing attributes!public! !
!ILFormElement categoriesFor: #acceptCharset:!accessing attributes!public! !
!ILFormElement categoriesFor: #acceptCharsets:!accessing attributes!public! !
!ILFormElement categoriesFor: #accepts:!accessing attributes!public! !
!ILFormElement categoriesFor: #addHiddenParameters!private! !
!ILFormElement categoriesFor: #beforePrintHtml!printing!public! !
!ILFormElement categoriesFor: #beMultipart!accessing attributes!public! !
!ILFormElement categoriesFor: #enctype!accessing attributes!public! !
!ILFormElement categoriesFor: #enctype:!accessing attributes!public! !
!ILFormElement categoriesFor: #isMultipart!public!testing! !
!ILFormElement categoriesFor: #multipart:!accessing attributes!public! !
!ILFormElement categoriesFor: #onReset:!accessing attributes/events!public! !
!ILFormElement categoriesFor: #onResetDo:!accessing attributes/events!public! !
!ILFormElement categoriesFor: #onSubmit:!accessing attributes/events!public! !
!ILFormElement categoriesFor: #onSubmitDo:!accessing attributes/events!public! !
!ILFormElement categoriesFor: #tag!accessing!public! !
!ILFormElement categoriesFor: #url!accessing!public! !
!ILFormElement categoriesFor: #useGet!accessing attributes!public! !
!ILFormElement categoriesFor: #usePost!accessing attributes!public! !

!ILFormElement class methodsFor!

encodingType	^'application/x-www-form-urlencoded'!

multipartFormData	^ 'multipart/form-data'! !
!ILFormElement class categoriesFor: #encodingType!defaults!public! !
!ILFormElement class categoriesFor: #multipartFormData!defaults!public! !

