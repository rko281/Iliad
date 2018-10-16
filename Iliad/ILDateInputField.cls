"Filed out from Dolphin Smalltalk 7"!

ILField subclass: #ILDateInputField
	instanceVariableNames: 'yearsInterval'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILDateInputField guid: (GUID fromString: '{95c0ec6f-09e8-46f3-9cde-e128f3492cf1}')!
ILDateInputField comment: ''!
!ILDateInputField categoriesForClass!Iliad-More-Formula! !
!ILDateInputField methodsFor!

day	^self value dayOfMonth!

day: anInteger	self value: (Date		newDay: anInteger		month: (Date nameOfMonth: self month)		year: self year)!

days	^1 to: 31!

fieldContents	^[:e | 		e select build: [:select |			self months do: [:each | 				select option					text: (Date nameOfMonth: each) greaseString;					action: [self month: each];					selected: (self month = each)]].		e select build: [:select |			self days do: [:each | 				select option 					text: each greaseString;					action: [self day: each];					selected: (self day = each)]].		e select build: [:select | 			self years do: [:each |				select option					text: each greaseString;					action: [self year: each];					selected: (self year = each)]]]!

month	^self value monthIndex!

month: anInteger	self value: (Date		newDay: self day		month: (Date nameOfMonth: anInteger)		year: self year)!

months	^1 to: 12!

value	^super value ifNil: [Date today]!

year	^self value year!

year: anInteger	self value: (Date		newDay: self day		month:  (Date nameOfMonth: self month)		year: anInteger)!

years	^self yearsInterval!

yearsInterval	^yearsInterval ifNil: [		(Date today year - 20) to: (Date today year + 20)]!

yearsInterval: anInterval	yearsInterval := anInterval! !
!ILDateInputField categoriesFor: #day!accessing!public! !
!ILDateInputField categoriesFor: #day:!accessing!public! !
!ILDateInputField categoriesFor: #days!accessing!public! !
!ILDateInputField categoriesFor: #fieldContents!building!public! !
!ILDateInputField categoriesFor: #month!accessing!public! !
!ILDateInputField categoriesFor: #month:!accessing!public! !
!ILDateInputField categoriesFor: #months!accessing!public! !
!ILDateInputField categoriesFor: #value!accessing!public! !
!ILDateInputField categoriesFor: #year!accessing!public! !
!ILDateInputField categoriesFor: #year:!accessing!public! !
!ILDateInputField categoriesFor: #years!accessing!public! !
!ILDateInputField categoriesFor: #yearsInterval!accessing!public! !
!ILDateInputField categoriesFor: #yearsInterval:!accessing!public! !

