"Filed out from Dolphin Smalltalk 7"!

ILUIWidget subclass: #ILTimeSelector
	instanceVariableNames: 'actionBlock selectedHours selectedMinutes showSeconds selectedSeconds'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTimeSelector guid: (GUID fromString: '{b6c99c58-695f-4118-ab0c-0acab28dbf87}')!
ILTimeSelector comment: ''!
!ILTimeSelector categoriesForClass!Iliad-More-UI! !
!ILTimeSelector methodsFor!

actionBlock	^actionBlock!

actionBlock: aBlock	actionBlock := aBlock!

contents	^[:e || div form |		div := e div class: self cssClass.		self selectedTimeIsValid ifFalse: [			div div				class: 'error';				text: 'Invalid time'].		form := div form.		form 			build: self hoursInputContents;			text: ':';			build: self minutesInputContents.		self showSeconds ifTrue: [			form text: ':';			build: self secondsInputContents].		form space.		form button			text: 'Select';			action: [self selectTime]]!

cssClass	^super cssClass, ' time_selector'!

hoursInputContents	^[:e |		e input			size: 2;			value: self selectedHours;			action: [:val | self selectHours: val]]!

initialize	super initialize.	actionBlock := [:val | self answer: val].	selectedHours := Time now hour24.	selectedMinutes := Time now minute.	selectedSeconds := Time now second!

minutesInputContents	^[:e |		e input			size: 2;			value: self selectedMinutes;			action: [:val | self selectMinutes: val]]!

secondsInputContents	^[:e |		e input			size: 2;			value: self selectedSeconds;			action: [:val | self selectSeconds: val]]!

selectedHours	^selectedHours!

selectedHours: anInteger	selectedHours := anInteger!

selectedMinutes	^selectedMinutes!

selectedMinutes: anInteger	selectedMinutes := anInteger!

selectedSeconds	^selectedSeconds!

selectedSeconds: anInteger	selectedSeconds := anInteger!

selectedTime	^Time 		hour: self selectedHours		minute: self selectedMinutes		second: self selectedSeconds!

selectedTime: aTime	self selectedHours: aTime hour24.	self selectedMinutes: aTime minute.	self selectedSeconds: aTime second!

selectedTimeIsValid	^ (self selectedHours between: 0 and: 24)		and: [ (self selectedMinutes between: 0 and: 60)				and: [ self selectedSeconds between: 0 and: 60 ] ]!

selectHours: aString	self selectedHours: aString asInteger!

selectMinutes: aString	self selectedMinutes: aString asInteger!

selectSeconds: aString	self selectedSeconds: aString asInteger!

selectTime	self selectedTimeIsValid ifFalse:[		^self markDirty].	self actionBlock value: self selectedTime!

showSeconds	^showSeconds ifNil: [false]!

showSeconds: aBoolean 	showSeconds := aBoolean! !
!ILTimeSelector categoriesFor: #actionBlock!accessing!public! !
!ILTimeSelector categoriesFor: #actionBlock:!accessing!public! !
!ILTimeSelector categoriesFor: #contents!building!public! !
!ILTimeSelector categoriesFor: #cssClass!accessing!public! !
!ILTimeSelector categoriesFor: #hoursInputContents!building!public! !
!ILTimeSelector categoriesFor: #initialize!initialization!public! !
!ILTimeSelector categoriesFor: #minutesInputContents!building!public! !
!ILTimeSelector categoriesFor: #secondsInputContents!building!public! !
!ILTimeSelector categoriesFor: #selectedHours!accessing!public! !
!ILTimeSelector categoriesFor: #selectedHours:!accessing!public! !
!ILTimeSelector categoriesFor: #selectedMinutes!accessing!public! !
!ILTimeSelector categoriesFor: #selectedMinutes:!accessing!public! !
!ILTimeSelector categoriesFor: #selectedSeconds!accessing!public! !
!ILTimeSelector categoriesFor: #selectedSeconds:!accessing!public! !
!ILTimeSelector categoriesFor: #selectedTime!accessing!public! !
!ILTimeSelector categoriesFor: #selectedTime:!accessing!public! !
!ILTimeSelector categoriesFor: #selectedTimeIsValid!public!testing! !
!ILTimeSelector categoriesFor: #selectHours:!actions!public! !
!ILTimeSelector categoriesFor: #selectMinutes:!actions!public! !
!ILTimeSelector categoriesFor: #selectSeconds:!actions!public! !
!ILTimeSelector categoriesFor: #selectTime!actions!public! !
!ILTimeSelector categoriesFor: #showSeconds!accessing!public! !
!ILTimeSelector categoriesFor: #showSeconds:!accessing!public! !

