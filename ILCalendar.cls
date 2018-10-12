"Filed out from Dolphin Smalltalk 7"!

ILUIWidget subclass: #ILCalendar
	instanceVariableNames: 'month year actionBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCalendar guid: (GUID fromString: '{7f8d09c9-b398-44c1-abd4-b9c1aa5041fe}')!
ILCalendar comment: ''!
!ILCalendar categoriesForClass!Iliad-More-UI! !
!ILCalendar methodsFor!

actionBlock	^actionBlock!

actionBlock: aBlock	actionBlock := aBlock!

calendarTableContents	^[:e || table row date |		table := e table.		date := Date newDay: 1 month: self month year: self year.		table build: self daysOfWeekRowContents.		row := table tr.		date dayOfWeek - 1 timesRepeat: [row td].		date daysInMonth timesRepeat: [| selectedDate |			selectedDate := date.			date dayOfWeek - 1 \\ 7 = 0 ifTrue: [row := table tr].			row td a				action: [self selectDate: selectedDate];				text: selectedDate dayOfMonth greaseString.			date := date addDays: 1]]!

contents	^[:e |		(e div class: self cssClass)			build: self monthSelectionFormContents;			build: self calendarTableContents]!

cssClass	^super cssClass, ' calendar'!

date	^Date newDay: 1 month: self month year: self year!

date: aDate	self month: aDate monthIndex.	self year: aDate year!

daysOfWeek	^(1 to: 7) collect: [:i | 		(Date nameOfDay: i) first: 3]!

daysOfWeekRowContents	^[:e || head |		head := e thead.		self daysOfWeek do: [:each |			head td text: each]]!

initialize	super initialize.	self date: Date today.	actionBlock := [:val | self answer: val]!

month	^month!

month: anInteger	month := anInteger!

months	^(1 to: 12) collect: [:i | 		(Date nameOfMonth: i) first: 3]!

monthSelectionFormContents	^[:e || form select |		form := e form class: 'month_selection'; yourself.		select := form select.		(1 to: 12) do: [:each || option |			option := select option.			option 				text: (self months at: each);				action: [self selectMonth: each].			each = self month ifTrue: [option selected]].		form input 			maxlength: 4; 			action: [:val | self selectYear: val];			value: self year.		form button text: 'select']!

selectDate: aDate	self actionBlock value: aDate!

selectMonth: anInteger	self month: anInteger.	self markDirty!

selectYear: anInteger	self year: anInteger.	self markDirty!

year	^year!

year: anInteger	year := [anInteger asNumber] on: Error do: [:error | 1970]! !
!ILCalendar categoriesFor: #actionBlock!accessing!public! !
!ILCalendar categoriesFor: #actionBlock:!accessing!public! !
!ILCalendar categoriesFor: #calendarTableContents!building!public! !
!ILCalendar categoriesFor: #contents!building!public! !
!ILCalendar categoriesFor: #cssClass!accessing!public! !
!ILCalendar categoriesFor: #date!accessing!public! !
!ILCalendar categoriesFor: #date:!accessing!public! !
!ILCalendar categoriesFor: #daysOfWeek!accessing!public! !
!ILCalendar categoriesFor: #daysOfWeekRowContents!building!public! !
!ILCalendar categoriesFor: #initialize!initialization!public! !
!ILCalendar categoriesFor: #month!accessing!public! !
!ILCalendar categoriesFor: #month:!accessing!public! !
!ILCalendar categoriesFor: #months!accessing!public! !
!ILCalendar categoriesFor: #monthSelectionFormContents!building!public! !
!ILCalendar categoriesFor: #selectDate:!actions!public! !
!ILCalendar categoriesFor: #selectMonth:!actions!public! !
!ILCalendar categoriesFor: #selectYear:!actions!public! !
!ILCalendar categoriesFor: #year!accessing!public! !
!ILCalendar categoriesFor: #year:!accessing!public! !

