"Filed out from Dolphin Smalltalk 7"!

ILUIWidget subclass: #ILDateSelector
	instanceVariableNames: 'actionBlock selectedMonth selectedDay selectedYear'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILDateSelector guid: (GUID fromString: '{dae44350-16ef-4726-a52a-e37fc1a0ddcc}')!
ILDateSelector comment: ''!
!ILDateSelector categoriesForClass!Iliad-More-UI! !
!ILDateSelector methodsFor!

actionBlock	^actionBlock!

actionBlock: aBlock	actionBlock := aBlock!

contents	^[:e || div form | 		div := e div class: self cssClass.		self selectedDateIsValid ifFalse: [			div div 				class: 'error';				text: 'Invalid date'].		form := div form.		form			build: self monthSelectionContents;			build: self dayInputContents;			build: self yearInputContents;			space.		form button 			text: 'Select';			action: [self selectDate]]!

cssClass	^super cssClass, ' date_selector'!

dayInputContents	^[:e |		e input			size: 2;			value: self selectedDay;			action: [:val | self selectDay: val]]!

initialize	super initialize.	actionBlock := [:val | self answer: val].	selectedMonth := Date today monthName greaseString.	selectedDay := Date today dayOfMonth.	selectedYear := Date today year!

months	^(1 to: 12) collect: [:i | 		Date nameOfMonth: i]!

monthSelectionContents	^[:e || select |		select := e select.		self months do: [:each || option |			option := select option				action: [self selectMonth: each];				text: each]]!

selectDate	self selectedDateIsValid ifFalse:[		^self markDirty].	self actionBlock value: self selectedDate!

selectDay: aString	self selectedDay: aString asInteger	!

selectedDate	^Date 		newDay: self selectedDay 		month: self selectedMonth 		year: self selectedYear!

selectedDate: aDate	self selectedMonth: aDate monthName greaseString.	self selectedDay: aDate dayOfMonth.	self selectedYear: aDate year!

selectedDateIsValid	[self selectedDate] 		on: Error		do: [:err | ^false].	^true!

selectedDay	^selectedDay!

selectedDay: anInteger	selectedDay := anInteger!

selectedMonth	^selectedMonth!

selectedMonth: aString	selectedMonth := aString!

selectedYear	^selectedYear!

selectedYear: anInteger	selectedYear := anInteger!

selectMonth: aString	self selectedMonth: aString	!

selectYear: aString	self selectedYear: aString asInteger	!

yearInputContents	^[:e |		e input			size: 4;			value: self selectedYear;			action: [:val | self selectYear: val]]! !
!ILDateSelector categoriesFor: #actionBlock!accessing!public! !
!ILDateSelector categoriesFor: #actionBlock:!accessing!public! !
!ILDateSelector categoriesFor: #contents!building!public! !
!ILDateSelector categoriesFor: #cssClass!accessing!public! !
!ILDateSelector categoriesFor: #dayInputContents!building!public! !
!ILDateSelector categoriesFor: #initialize!initialization!public! !
!ILDateSelector categoriesFor: #months!accessing!public! !
!ILDateSelector categoriesFor: #monthSelectionContents!building!public! !
!ILDateSelector categoriesFor: #selectDate!actions!public! !
!ILDateSelector categoriesFor: #selectDay:!actions!public! !
!ILDateSelector categoriesFor: #selectedDate!accessing!public! !
!ILDateSelector categoriesFor: #selectedDate:!accessing!public! !
!ILDateSelector categoriesFor: #selectedDateIsValid!public!testing! !
!ILDateSelector categoriesFor: #selectedDay!accessing!public! !
!ILDateSelector categoriesFor: #selectedDay:!accessing!public! !
!ILDateSelector categoriesFor: #selectedMonth!accessing!public! !
!ILDateSelector categoriesFor: #selectedMonth:!accessing!public! !
!ILDateSelector categoriesFor: #selectedYear!accessing!public! !
!ILDateSelector categoriesFor: #selectedYear:!accessing!public! !
!ILDateSelector categoriesFor: #selectMonth:!actions!public! !
!ILDateSelector categoriesFor: #selectYear:!actions!public! !
!ILDateSelector categoriesFor: #yearInputContents!building!public! !

