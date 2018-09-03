"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ILUrl
	instanceVariableNames: 'scheme username password hostname port path parameters fragment'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILUrl guid: (GUID fromString: '{e41a39ad-88e2-4059-92fc-b9cecd8dc09b}')!
ILUrl comment: 'I represent all portions of an URL as described by the RFC 1738. I include scheme, username, password, hostname, port, path, parameters, and fragment.Portions of this code are based on code of Kazuki Yasumatsu and Paolo Bonzini.Instance Variables	scheme:			<String> or nil	username:		<String> or nil	password:		<String> or nil	hostname:		<String> or nil	port:			<Integer> or nil	path:			<OrderedCollection> or nil	parameters:		<Dictionary>	fragment:		<String> or nil'!
!ILUrl categoriesForClass!Iliad-Core-lib-HTTP! !
!ILUrl methodsFor!

, aString	^self greaseString, aString greaseString!

= anUrl	^ self class = anUrl class and: [ self greaseString = anUrl greaseString ]!

addAllToPath: aCollectionOfStrings	"convenice method to add a collection of strings to the path"	aCollectionOfStrings do: [ :each |		self addToPath: each ]!

addParameter: aString	self addParameter: aString value: nil!

addParameter: keyString value: valueString	self parameters at: keyString put: valueString!

addToPath: aString	self path addAll: (aString findTokens: '/')!

asString	^ self printString!

decode: aString	"percent decodes the given String"	^ self class decodePercent: aString!

encodeParametersOn: aStream encoded: aBoolean usingHtmlEntities: anotherBoolean	| first |	first := true.	parameters ifNil: [ ^ self ].	parameters		keysAndValuesDo: [ :key :value | 			aStream				nextPutAll:					(first						ifTrue: [ first := false.							'?' ]						ifFalse: [ anotherBoolean								ifTrue: [ '&amp;' ]								ifFalse: [ '&' ] ]).			ILEncoder printUrl: key encoded: aBoolean on: aStream.			value				ifNotNil: [ :arg | 					aStream nextPut: $=.					ILEncoder						printUrl: value greaseString						encoded: aBoolean						on: aStream ] ]!

fragment	"Answer the fragment part of the URL."	^ fragment!

fragment: aString	fragment := aString!

hash	" Private - #hash is implemented because #= is implemented "	^ self hostname hash bitXor: self path hash!

hostname	" Answer the host part of the URL. "	^ hostname!

hostname: aString	hostname := aString!

initialize	scheme := 'http'!

initializeFromString: aString	| string index |	self initialize.	string := aString.	index := string indexOf: $#.	index > 0 ifTrue: [		self parseFragment: (string copyFrom: index + 1 to: string size).		string := string copyFrom: 1 to: index - 1 ].	index := string indexOf: $?.	index > 0 ifTrue: [		self parseParameters: (string copyFrom: index + 1 to: string size).		string := string copyFrom: 1 to: index - 1 ].	index := string indexOfSubCollection: '://'.	index > 0 ifTrue: [ 		self scheme: (string copyFrom: 1 to: index - 1).		string := string copyFrom: index + 3 to: string size.		index := string indexOf: $/.		string := index > 0			ifFalse: [ 				self parseHost: string.				'' ]			ifTrue: [				self parseHost: (string copyFrom: 1 to: index - 1).				string copyFrom: index + 1 to: string size ] ].	self parsePath: string!

parameters	^parameters ifNil: [parameters := GRSmallDictionary new]!

parseFragment: aString	aString isEmpty ifTrue: [^self].	self fragment: (self decode: aString)!

parseHost: aString	| string temp index |	aString isEmpty 		ifTrue: [ ^ self ].	string := aString.	index := string indexOf: $@.	index > 1 ifTrue: [		temp := string copyFrom: 1 to: index - 1.		string := string copyFrom: index + 1 to: string size.		index := temp indexOf: $:.		index > 0 			ifFalse: [self username: (self decode: temp)]			ifTrue: [				self username: (self decode: (temp copyFrom: 1 to: index - 1)).				self password: (self decode: (temp copyFrom: index + 1 to: temp size))]].	index := string indexOf: $:.	index > 0 ifTrue: [		temp := string copyFrom: index + 1 to: string size.		string := string copyFrom: 1 to: index - 1.		self port: ((temp notEmpty and: [temp allSatisfy: [:each | each isDigit]])			ifTrue: [temp asInteger])].	self hostname: (self decode: string)!

parseParameters: aString	| input string index |	input := aString readStream.	[input atEnd ] whileFalse: [		string := input upTo: $&.		index := string indexOf: $=.		index > 0			ifFalse: [self addParameter: (self decode: string)]			ifTrue: [				self					addParameter: (self decode: (string copyFrom: 1 to: index - 1))					value: (self decode: (string copyFrom: index + 1 to: string size))]]!

parsePath: aString	| input part |	input := aString readStream.	input peek = $/ 		ifTrue: [ path := nil ].	[ input atEnd ] whileFalse: [		part := input upTo: $/.		part isEmpty ifFalse: [			part = '..'				ifTrue: [ self path isEmpty ifFalse: [ self path removeLast ] ]				ifFalse: [ part = '.' ifFalse: [ self path addLast: (self decode: part) ] ] ] ]!

password	"Answer the password part of the URL."	^password!

password: aString	password := aString!

path	"Answer the path part of the URL."	^ path ifNil: [ path := OrderedCollection new ]!

path: aCollection	"Set the path part of the URL to aCollection."	path := aCollection!

pathString	"Answer the path converted to a string."	^String streamContents: [ :stream | 		self printPathOn: stream encoded: false]!

port	"Answer the port number part of the URL."	^port!

port: aNumber	port := aNumber!

postCopy	super postCopy.	scheme := scheme copy.	username := username copy.	password := password copy.	hostname := hostname copy.	port := port copy.	path := path copy.	parameters := parameters copy.	fragment := fragment copy!

printEncodedOn: aStream	self printOn: aStream encoded: false usingHtmlEntities: true!

printFragmentOn: aStream encoded: aBoolean	fragment ifNil: [^self].	aStream nextPut: $#.	ILEncoder printUrl: fragment encoded: aBoolean on: aStream!

printOn: aStream	self printOn: aStream encoded: true!

printOn: aStream encoded: aBoolean	self printOn: aStream encoded: aBoolean usingHtmlEntities: false!

printOn: aStream encoded: aBoolean usingHtmlEntities: anotherBoolean	self printServerOn: aStream encoded: aBoolean.	self printPathOn: aStream encoded: aBoolean.	self printParametersOn: aStream encoded: aBoolean usingHtmlEnities: anotherBoolean.	self printFragmentOn: aStream encoded: aBoolean !

printParametersOn: aStream encoded: aBoolean usingHtmlEnities: anotherBoolean	| first |	first := true.	parameters ifNil: [^self].	parameters keysAndValuesDo: [:key :value |		aStream nextPutAll: (first 			ifTrue: [first := false. '?']			ifFalse: [anotherBoolean ifTrue: ['&amp;'] ifFalse: ['&']]).		ILEncoder printUrl: key encoded: aBoolean on: aStream.		value ifNotNil: [			aStream nextPut: $=.			ILEncoder printUrl: value greaseString encoded: aBoolean on: aStream]]!

printPathOn: aStream encoded: aBoolean	aStream nextPut: $/.	path ifNil: [ ^ self ].	path		do: [ :each | 			ILEncoder printUrl: each encoded: aBoolean on: aStream]		separatedBy: [aStream nextPut: $/] !

printServerOn: aStream encoded: aBoolean	hostname ifNil: [^self].	aStream nextPutAll: scheme; nextPutAll: '://'.	username notNil ifTrue: [		ILEncoder printUrl: username encoded: aBoolean on: aStream.		password notNil ifTrue: [			aStream nextPut: $:.			ILEncoder printUrl: password encoded: aBoolean on: aStream].		aStream nextPut: $@].	ILEncoder printUrl: hostname encoded: aBoolean on: aStream.	port notNil ifTrue: [		((scheme = 'http' and: [port = 80])			or: [scheme = 'https' and: [port = 443]])				ifFalse: [					aStream 						nextPut: $:; 						print: port]]!

relativeTo: anUrl	"Answer a path element collection relative from the receiver to anUrl."		| currentPath argumentPath resultingPath |	currentPath := self path copy.	argumentPath := anUrl path copy.	[currentPath notEmpty and: [argumentPath notEmpty and: [ currentPath first = argumentPath first]]] whileTrue: [		currentPath removeFirst.		argumentPath removeFirst ].	resultingPath := OrderedCollection new.	currentPath size 		timesRepeat: [resultingPath add: '..'].	resultingPath addAll: argumentPath.	^resultingPath!

removeParameter: aString	self parameters removeKey: aString ifAbsent: []!

removeParameters	parameters := nil!

scheme	"Answer the URL's scheme."	^scheme!

scheme: aString	"we really expect a String here, Old versions (2.7) expected a Symbol you can still pass a Symbol and get away with it but don't expect this behavior to be supported in future versions.	#asString is the 'correct' way to convert a Symbol to a String since #displayString will add a hash on VW"	scheme := aString greaseString!

takeServerParametersFromRequest: aRequest	| httpHost |	hostname ifNil: [		httpHost := aRequest			headerAt: 'host'			ifAbsent: [^self].		hostname := httpHost copyUpTo: $:.		(httpHost includes: $:)			ifTrue: [port := (httpHost copyAfter: $:) asNumber]]!

username	"Answer the username part of the URL."	^username!

username: aString	username := aString!

with: pathString	^self copy		addToPath: pathString;		yourself!

withoutParameters	^self copy		removeParameters;		yourself!

withParameter: aString	^self copy		addParameter: aString;		yourself!

withParameter: aString value: valueString	^self copy		addParameter: aString value: valueString;		yourself! !
!ILUrl categoriesFor: #,!basic!public! !
!ILUrl categoriesFor: #=!comparing!public! !
!ILUrl categoriesFor: #addAllToPath:!adding!public! !
!ILUrl categoriesFor: #addParameter:!adding!public! !
!ILUrl categoriesFor: #addParameter:value:!adding!public! !
!ILUrl categoriesFor: #addToPath:!adding!public! !
!ILUrl categoriesFor: #asString!converting!public! !
!ILUrl categoriesFor: #decode:!private! !
!ILUrl categoriesFor: #encodeParametersOn:encoded:usingHtmlEntities:!encoding!public! !
!ILUrl categoriesFor: #fragment!accessing!public! !
!ILUrl categoriesFor: #fragment:!accessing!public! !
!ILUrl categoriesFor: #hash!comparing!public! !
!ILUrl categoriesFor: #hostname!accessing!public! !
!ILUrl categoriesFor: #hostname:!accessing!public! !
!ILUrl categoriesFor: #initialize!initialization!public! !
!ILUrl categoriesFor: #initializeFromString:!initialization!public! !
!ILUrl categoriesFor: #parameters!accessing!public! !
!ILUrl categoriesFor: #parseFragment:!parsing!public! !
!ILUrl categoriesFor: #parseHost:!parsing!public! !
!ILUrl categoriesFor: #parseParameters:!parsing!public! !
!ILUrl categoriesFor: #parsePath:!parsing!public! !
!ILUrl categoriesFor: #password!accessing!public! !
!ILUrl categoriesFor: #password:!accessing!public! !
!ILUrl categoriesFor: #path!accessing!public! !
!ILUrl categoriesFor: #path:!accessing!public! !
!ILUrl categoriesFor: #pathString!converting!public! !
!ILUrl categoriesFor: #port!accessing!public! !
!ILUrl categoriesFor: #port:!accessing!public! !
!ILUrl categoriesFor: #postCopy!copying!public! !
!ILUrl categoriesFor: #printEncodedOn:!printing!public! !
!ILUrl categoriesFor: #printFragmentOn:encoded:!encoding!public! !
!ILUrl categoriesFor: #printOn:!printing!public! !
!ILUrl categoriesFor: #printOn:encoded:!printing!public! !
!ILUrl categoriesFor: #printOn:encoded:usingHtmlEntities:!encoding!public! !
!ILUrl categoriesFor: #printParametersOn:encoded:usingHtmlEnities:!encoding!public! !
!ILUrl categoriesFor: #printPathOn:encoded:!encoding!public! !
!ILUrl categoriesFor: #printServerOn:encoded:!encoding!public! !
!ILUrl categoriesFor: #relativeTo:!converting!public! !
!ILUrl categoriesFor: #removeParameter:!public!removing! !
!ILUrl categoriesFor: #removeParameters!private! !
!ILUrl categoriesFor: #scheme!accessing!public! !
!ILUrl categoriesFor: #scheme:!accessing!public! !
!ILUrl categoriesFor: #takeServerParametersFromRequest:!private! !
!ILUrl categoriesFor: #username!accessing!public! !
!ILUrl categoriesFor: #username:!accessing!public! !
!ILUrl categoriesFor: #with:!copying!public! !
!ILUrl categoriesFor: #withoutParameters!copying!public! !
!ILUrl categoriesFor: #withParameter:!copying!public! !
!ILUrl categoriesFor: #withParameter:value:!copying!public! !

!ILUrl class methodsFor!

absolute: aString	"Parse aString as an absolute URL."	^ self basicNew initializeFromString: aString!

absolute: aString relative: aRelativeString	"Take absolute URL aString and combine it with a relative path aRelativeString."	^(self absolute: aString)		parsePath: aRelativeString;		yourself!

decodePercent: aString	"percent decodes the given String"	| input output char |	input := aString readStream.	output := WriteStream on: (String new: aString size).	[ input atEnd ] whileFalse: [		char := input next.		output nextPut: (char = $+			ifTrue: [ Character space ]			ifFalse: [				char = $%					ifTrue: [						Character value: input next asUppercase digitValue * 16							+ input next asUppercase digitValue ]					ifFalse: [ char ] ]) ].	^ output contents!

new	^self basicNew initialize! !
!ILUrl class categoriesFor: #absolute:!parsing!public! !
!ILUrl class categoriesFor: #absolute:relative:!parsing!public! !
!ILUrl class categoriesFor: #decodePercent:!decoding!public! !
!ILUrl class categoriesFor: #new!instance creation!public! !

