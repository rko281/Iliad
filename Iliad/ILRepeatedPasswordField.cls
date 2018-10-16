"Filed out from Dolphin Smalltalk 7"!

ILField subclass: #ILRepeatedPasswordField
	instanceVariableNames: 'repeatedValue repeatLabelContents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRepeatedPasswordField guid: (GUID fromString: '{f95f8196-1ed0-4da3-9699-9eb45797d7a4}')!
ILRepeatedPasswordField comment: ''!
!ILRepeatedPasswordField categoriesForClass!Iliad-More-Formula! !
!ILRepeatedPasswordField methodsFor!

buildPasswdFields: tbody	tbody tr build: [:tr |		tr id: self id.		self isValid ifFalse: [ 			tr cssClass 				ifNil: [ tr cssClass: 'error' ]				ifNotNil: [ tr cssClass: tr cssClass , ' error'] ].		tr div cssClass: 'pure-control-group'; build: [ : e |			e label build: self labelContents.			e build: self fieldContents ].		tr div cssClass: 'pure-control-group'; build: [ : e |						e label build: self repeatLabelContents.			e build: self repeatFieldContents ] ].!

fieldContents	^ [ : e | 		e password			value: (self value ifNil: [ '' ]);			action: [ : val | self value: val ] ]	!

repeatedValue 	^repeatedValue !

repeatedValue: aString 	repeatedValue := aString!

repeatFieldContents	^ [ : e | 		e password			value: (self repeatedValue ifNil: ['']);			action: [ : val | self repeatedValue: val ] ]!

repeatLabelContents	^ repeatLabelContents!

repeatLabelContents: anObject	repeatLabelContents := anObject!

tableRowContents	^[ : tbody |		self buildPasswdFields: tbody.		self commentContents ifNotNil:[			tbody tr build: [:tr | 				tr td.				tr td					cssClass: 'comment';					build: self commentContents]].		tbody 			build: self errorsContents;			build: self customRowsContents]!

validate	super validate. 	self repeatedValue = self value ifFalse: [		self errors add: 'Values do not match']! !
!ILRepeatedPasswordField categoriesFor: #buildPasswdFields:!building!public! !
!ILRepeatedPasswordField categoriesFor: #fieldContents!accessing!public! !
!ILRepeatedPasswordField categoriesFor: #repeatedValue!accessing!public! !
!ILRepeatedPasswordField categoriesFor: #repeatedValue:!accessing!public! !
!ILRepeatedPasswordField categoriesFor: #repeatFieldContents!accessing!public! !
!ILRepeatedPasswordField categoriesFor: #repeatLabelContents!accessing!public! !
!ILRepeatedPasswordField categoriesFor: #repeatLabelContents:!accessing!public! !
!ILRepeatedPasswordField categoriesFor: #tableRowContents!building!public! !
!ILRepeatedPasswordField categoriesFor: #validate!actions!public! !

