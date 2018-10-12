"Filed out from Dolphin Smalltalk 7"!

ILField subclass: #ILAutocompleteInputField
	instanceVariableNames: 'options fieldId'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILAutocompleteInputField guid: (GUID fromString: '{4b0bd2a4-8ae7-4c2a-995e-be52515efd55}')!
ILAutocompleteInputField comment: ''!
!ILAutocompleteInputField categoriesForClass!Iliad-More-Formula! !
!ILAutocompleteInputField methodsFor!

completerScript	| str |		str := WriteStream on: ''.	str nextPutAll: 'jQuery(''#';		nextPutAll: fieldId;		nextPutAll: ''').autocomplete('.	str nextPut: $[.	self options do: [:each |		str 			nextPut:  $";			nextPutAll: each;			nextPut: $" ]		separatedBy: [ str nextPut: $, ].	str nextPutAll: '])'.	^ str contents	!

fieldContents	^[:e |		e input			id: fieldId;			value: (self value ifNil: ['']);			action: [:val | self value: val].		e script: self completerScript]!

initialize 	super initialize.	fieldId := ILId new!

options	^options ifNil: [#()]!

options: aCollection	options := aCollection ! !
!ILAutocompleteInputField categoriesFor: #completerScript!building!public! !
!ILAutocompleteInputField categoriesFor: #fieldContents!building!public! !
!ILAutocompleteInputField categoriesFor: #initialize!initialization!public! !
!ILAutocompleteInputField categoriesFor: #options!accessing!public! !
!ILAutocompleteInputField categoriesFor: #options:!accessing!public! !

