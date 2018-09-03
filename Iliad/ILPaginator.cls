"Filed out from Dolphin Smalltalk 7"!

ILUIWidget subclass: #ILPaginator
	instanceVariableNames: 'currentPage totalPages action'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILPaginator guid: (GUID fromString: '{feea97ac-28b0-4311-a354-916264ada7c8}')!
ILPaginator comment: ''!
!ILPaginator categoriesForClass!Iliad-More-UI! !
!ILPaginator methodsFor!

action	^ action!

action: anObject	action := anObject!

contents	^[:e |		e div			class: self cssClass;			build: [:div |				self totalPages > 1 ifTrue: [					self currentPage = 1						ifTrue: [div span text: '<< ']						ifFalse: [							div a 								text: '<<';								action: [self selectPage: self currentPage -1].							div space].						self range do: [:each |							self currentPage = each 								ifTrue: [div span class: 'selected'; text: each greaseString]								ifFalse: [									div a										text: each greaseString;										action: [self selectPage: each]].							div space].					self currentPage = totalPages						ifTrue: [div span text: '>>']						ifFalse: [							div a								text: '>>';								action: [self selectPage: self currentPage +1]]]]]!

cssClass	^super cssClass, ' paginator'!

currentPage	^ currentPage!

currentPage: anObject	currentPage := anObject.	self markDirty!

range	^self rangeStart to: self rangeEnd!

rangeEnd	^self totalPages min: self currentPage + 5!

rangeStart	^1 max: self currentPage - 5!

selectPage: anInteger	self action value: anInteger!

totalPages	^totalPages!

totalPages: anInteger	totalPages := anInteger.	self markDirty! !
!ILPaginator categoriesFor: #action!accessing!public! !
!ILPaginator categoriesFor: #action:!accessing!public! !
!ILPaginator categoriesFor: #contents!building!public! !
!ILPaginator categoriesFor: #cssClass!accessing!public! !
!ILPaginator categoriesFor: #currentPage!accessing!public! !
!ILPaginator categoriesFor: #currentPage:!accessing!public! !
!ILPaginator categoriesFor: #range!accessing!public! !
!ILPaginator categoriesFor: #rangeEnd!accessing!public! !
!ILPaginator categoriesFor: #rangeStart!accessing!public! !
!ILPaginator categoriesFor: #selectPage:!actions!public! !
!ILPaginator categoriesFor: #totalPages!accessing!public! !
!ILPaginator categoriesFor: #totalPages:!accessing!public! !

