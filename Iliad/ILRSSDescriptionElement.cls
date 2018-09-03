"Filed out from Dolphin Smalltalk 7"!

ILRSSElement subclass: #ILRSSDescriptionElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRSSDescriptionElement guid: (GUID fromString: '{18c2ca9a-72e2-4ed1-a464-1907fbf70d81}')!
ILRSSDescriptionElement comment: ''!
!ILRSSDescriptionElement categoriesForClass!Iliad-More-RSS! !
!ILRSSDescriptionElement methodsFor!

printCloseTagOn: aStream	aStream nextPutAll: ']]>'.	super printCloseTagOn: aStream!

printOpenTagOn: aStream	super printOpenTagOn: aStream.	aStream nextPutAll: '<!![CDATA['!

tag	^ 'description'! !
!ILRSSDescriptionElement categoriesFor: #printCloseTagOn:!printing!public! !
!ILRSSDescriptionElement categoriesFor: #printOpenTagOn:!printing!public! !
!ILRSSDescriptionElement categoriesFor: #tag!accessing!public! !

