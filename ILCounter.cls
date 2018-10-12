"Filed out from Dolphin Smalltalk 7"!

ILWidget subclass: #ILCounter
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILCounter guid: (GUID fromString: '{963baa9b-c16e-4e72-941e-66f0ab97e5df}')!
ILCounter comment: ''!
!ILCounter categoriesForClass!Iliad-More-Examples! !
!ILCounter methodsFor!

contents	^[:e |		e h1: count greaseString.		e a action: [self increase]; text: '++'.		e space.		e a action: [self decrease]; text: '--']!

decrease	count := count - 1.	self markDirty!

increase	count := count + 1.	self markDirty!

initialize	super initialize.	count := 0!

styles 	^#('/stylesheets/iliad.css')! !
!ILCounter categoriesFor: #contents!building!public! !
!ILCounter categoriesFor: #decrease!actions!public! !
!ILCounter categoriesFor: #increase!actions!public! !
!ILCounter categoriesFor: #initialize!initialization!public! !
!ILCounter categoriesFor: #styles!building!public! !

