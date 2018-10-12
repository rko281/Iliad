"Filed out from Dolphin Smalltalk 7"!

ILField subclass: #ILTimeInputField
	instanceVariableNames: 'hours minutes seconds'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILTimeInputField guid: (GUID fromString: '{771c9b1e-bcde-4627-bcf1-00543741598f}')!
ILTimeInputField comment: ''!
!ILTimeInputField categoriesForClass!Iliad-More-Formula! !
!ILTimeInputField methodsFor!

fieldContents	^[:e | 		e select build: [:select | 			(1 to: 24) do: [:each | 				select option 					text: each greaseString;					action: [self hours: each];					selected: self hours = each]].		e select build: [:select | 			(1 to: 60) do: [:each | 				select option 					text: each greaseString;						action: [self minutes: each];					selected: self minutes = each]].		e select build: [:select | 			(1 to: 60) do: [:each | 				select option 					text: each greaseString;						action: [self seconds: each];					selected: self seconds = each]].		e input beHidden			action: [:val | self value: self time]]!

hours	^hours!

hours: anInteger	hours := anInteger!

initialize	super initialize.	self value: Time now!

minutes	^minutes!

minutes: anInteger	minutes := anInteger!

seconds	^seconds!

seconds: anInteger	seconds := anInteger!

time	^Time 		hour: self hours		minute: self minutes		second: self seconds!

time: aTime 	self hours: aTime hours.	self minutes: aTime minutes.	self seconds: aTime seconds!

value: aTime 	super value: aTime.	self time: aTime! !
!ILTimeInputField categoriesFor: #fieldContents!building!public! !
!ILTimeInputField categoriesFor: #hours!accessing!public! !
!ILTimeInputField categoriesFor: #hours:!accessing!public! !
!ILTimeInputField categoriesFor: #initialize!initialization!public! !
!ILTimeInputField categoriesFor: #minutes!accessing!public! !
!ILTimeInputField categoriesFor: #minutes:!accessing!public! !
!ILTimeInputField categoriesFor: #seconds!accessing!public! !
!ILTimeInputField categoriesFor: #seconds:!accessing!public! !
!ILTimeInputField categoriesFor: #time!accessing!public! !
!ILTimeInputField categoriesFor: #time:!accessing!public! !
!ILTimeInputField categoriesFor: #value:!accessing!public! !

