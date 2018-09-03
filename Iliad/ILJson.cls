"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILJson
	instanceVariableNames: 'stream ctorMap'
	classVariableNames: 'CharacterEscapeMap'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILJson guid: (GUID fromString: '{cd0e8362-9d48-4866-bc3e-cef025c04430}')!
ILJson comment: 'This class reads and writes JSON format data - strings, numbers, boolean, nil, arrays and dictionaries. See http://www.crockford.com/JSON/index.html. It has been extended with syntax for invoking a prearranged list of constructors on read objects.'!
!ILJson categoriesForClass!Iliad-Core-lib-JSON! !
!ILJson methodsFor!

consume: aString returning: anObject	aString do: [:c | self next == c ifFalse: [ILJsonSyntaxError signal: 'Expected ''', aString, ''''] ].	^ anObject!

ctorMap	^ctorMap!

ctorMap: m	ctorMap := m!

interpretStringEscape	| c |	c := self next.	c == $b ifTrue: [^ Character backspace].	c == $n ifTrue: [^ Character lf].	c == $f ifTrue: [^ Character newPage].	c == $r ifTrue: [^ Character cr].	c == $t ifTrue: [^ Character tab].	^ c.!

next	^ self stream next!

peek	^ self stream peek!

readAny	"This is the main entry point for the JSON parser. See also readFrom: on the class side."	| c |	self skipWhitespace.	c := self peek asLowercase.	c == ${ ifTrue: [self next. ^ self readDictionary].	c == $[ ifTrue: [self next. ^ self readArray].	c == $" ifTrue: [self next. ^ self readString].	c == $t ifTrue: [^ self consume: 'true' returning: true].	c == $f ifTrue: [^ self consume: 'false' returning: false].	c == $n ifTrue: [^ self consume: 'null' returning: nil].	c == $@ ifTrue: [self next. ^ self readConstructor].	(ILJson numbersMayContain: c) ifTrue: [^ self readNumber].	ILJsonSyntaxError signal: 'Unknown Json input'!

readArray	| a needComma |	a := OrderedCollection new.	needComma := false.	[		self skipWhitespace.		self peek == $] ifTrue: [self next. ^ a asArray].		needComma			ifTrue: [self peek == $, ifFalse: [ILJsonSyntaxError signal: 'Missing comma'].					self next.]			ifFalse: [needComma := true]. 		a add: self readAny.	] repeat.!

readConstructor	| s c v ctor |	s := WriteStream on: String new.	[		c := self peek.		c ifNil: [ILJsonSyntaxError signal: 'Premature EOF reading constructor name'].		((c == $.) or: [c isLetter])			ifTrue: [s nextPut: c. self next]			ifFalse: [				v := self readAny.				s := s contents.				ctor := ctorMap ifNotNil: [ctor := ctorMap at: s ifAbsent: [nil]].				ctor ifNil: [ILJsonSyntaxError signal: 'Unknown ctor ', s].				^ ctor constructFromJson: v]	] repeat.!

readDictionary	| m k v needComma |	m := Dictionary new.	needComma := false.	[		self skipWhitespace.		self peek == $} ifTrue: [self next. ^ m].		needComma			ifTrue: [self peek == $, ifFalse: [ILJsonSyntaxError signal: 'Missing comma'].					self next. self skipWhitespace]			ifFalse: [needComma := true.].		self next == $" ifFalse: [ILJsonSyntaxError signal: 'Key in dictionary must be string'].		k := self readString.		self skipWhitespace.		self peek == $: ifFalse: [ILJsonSyntaxError signal: 'Missing colon'].		self next.		v := self readAny.		m at: k put: v.	] repeat.!

readFrom: aStream	self stream: aStream.	^ self readAny!

readNumber	| acc c |	acc := WriteStream on: String new.	[		c := self peek.		(c isNil not and: [ILJson numbersMayContain: c]) ifFalse: [			[^ acc contents asNumber] on: Error do: [ILJsonSyntaxError signal: 'Invalid number']].		acc nextPut: c.		self next.	] repeat.!

readString	| s c |	s := WriteStream on: String new.	[		c := self next.		c == $\			ifTrue: [s nextPut: self interpretStringEscape.]			ifFalse: [c == $" ifTrue: [^ s contents.].					s nextPut: c]	] repeat.!

skipComment	self peek == $/ ifTrue: [		self next.		self peek == $/			ifTrue: [self skipToEndOfLine]			ifFalse: [self peek == $*						ifTrue: [self next. self skipCommentBody]						ifFalse: [ILJsonSyntaxError signal: 'Invalid comment syntax']]]!

skipCommentBody	[		[self next == $*] whileFalse.		self peek == $/	] whileFalse.	self next. "skip that last slash"	self skipWhitespace.!

skipToEndOfLine	[self peek == Character cr or: [self peek == Character lf]] whileFalse: [self next].	self skipWhitespace!

skipWhitespace	[self peek isSeparator] whileTrue: [self next].	self skipComment.!

stream	"Answer the value of stream"	^ stream!

stream: anObject	"Set the value of stream"	stream := anObject! !
!ILJson categoriesFor: #consume:returning:!private! !
!ILJson categoriesFor: #ctorMap!accessing!public! !
!ILJson categoriesFor: #ctorMap:!accessing!public! !
!ILJson categoriesFor: #interpretStringEscape!private! !
!ILJson categoriesFor: #next!private! !
!ILJson categoriesFor: #peek!private! !
!ILJson categoriesFor: #readAny!parsing!public! !
!ILJson categoriesFor: #readArray!private! !
!ILJson categoriesFor: #readConstructor!private! !
!ILJson categoriesFor: #readDictionary!private! !
!ILJson categoriesFor: #readFrom:!parsing!public! !
!ILJson categoriesFor: #readNumber!private! !
!ILJson categoriesFor: #readString!private! !
!ILJson categoriesFor: #skipComment!private! !
!ILJson categoriesFor: #skipCommentBody!private! !
!ILJson categoriesFor: #skipToEndOfLine!private! !
!ILJson categoriesFor: #skipWhitespace!private! !
!ILJson categoriesFor: #stream!accessing!public! !
!ILJson categoriesFor: #stream:!accessing!public! !

!ILJson class methodsFor!

escapeForCharacter: c	^ CharacterEscapeMap at: c ifAbsent: [nil]!

initialize	"Json initialize."	CharacterEscapeMap := Dictionary newFrom: {		$" -> $".		$\ -> $\.		Character backspace -> $b.		Character lf -> $n.		Character newPage -> $f.		Character cr -> $r.		Character tab -> $t.	}.!

mimeType	^'application/json'!

newWithConstructors: aCollection	| m |	m := Dictionary new.	aCollection do: [:each |		(each isKindOf: Association)			ifTrue: [m add: each]			ifFalse: [m at: each name greaseString put: each]].	^ self new ctorMap: m; yourself.!

numbersMayContain: aChar	^ aChar isDigit or: [#($- $+ $. $e $E) includes: aChar]!

readFrom: aStream	^self new readFrom: aStream.!

render: anObject	| s |	s := WriteStream on: String new.	anObject printJsonOn: s.	^ s contents.!

render: anObject withConstructor: aConstructorName on: aStream	aStream nextPutAll: '@', aConstructorName.	anObject printJsonOn: aStream.!

renderInstanceVariables: aCollection of: anObject on: aStream	| map |	map := Dictionary new.	aCollection do: [:ivarName | map at: ivarName put: (anObject instVarNamed: ivarName)].	self render: map withConstructor: anObject class name greaseString on: aStream! !
!ILJson class categoriesFor: #escapeForCharacter:!private! !
!ILJson class categoriesFor: #initialize!initialization!public! !
!ILJson class categoriesFor: #mimeType!private! !
!ILJson class categoriesFor: #newWithConstructors:!private! !
!ILJson class categoriesFor: #numbersMayContain:!private! !
!ILJson class categoriesFor: #readFrom:!objects from disk!public! !
!ILJson class categoriesFor: #render:!private! !
!ILJson class categoriesFor: #render:withConstructor:on:!private! !
!ILJson class categoriesFor: #renderInstanceVariables:of:on:!private! !

