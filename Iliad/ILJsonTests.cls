"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILJsonTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILJsonTests guid: (GUID fromString: '{e6dd0bd2-00cf-4658-94d7-ecf28cc9f948}')!
ILJsonTests comment: 'I provide a number of test cases for class Json.'!
!ILJsonTests categoriesForClass!Iliad-Tests-lib-JSON! !
!ILJsonTests methodsFor!

json: aString equals: aValue	| readValue |	readValue := self readFrom: aString.	self assert: readValue equals: aValue!

readFrom: aString	^ (ILJson newWithConstructors: {ILJsonDummyTestObject.}) readFrom: aString readStream!

render: anObject equals: aString	self assert: (ILJson render: anObject) equals: aString!

simpleDummyObject	^ILJsonDummyTestObject new a: 1; b: 2; c: 3; yourself!

testArray	self json: '[]' equals: #().	self json: '[[]]' equals: #(#()).	self json: '[[], []]' equals: #(#() #()).	self json: '["hi", "there"]' equals: #('hi' 'there').	self json: '[["a", "b", null]]' equals: #(('a' 'b' nil)).!

testAtomFalse	self json: 'false' equals: false.	self json: '  false' equals: false.	self json: 'false  ' equals: false.	self json: '  false  ' equals: false.!

testAtomNull	self json: 'null' equals: nil.	self json: '  null' equals: nil.	self json: 'null  ' equals: nil.	self json: '  null  ' equals: nil.!

testAtomNumber	self json: '1' equals: 1.	self json: '0123' equals: 123.	self json: '-1' equals: -1.	self json: '-0' equals: 0.	self json: '[-1.2]' equals: #(-1.2).!

testAtomString	self json: '"hi"' equals: 'hi'.	self json: '"\""' equals: '"'.	self json: '"\\"' equals: '\'.	self json: '""' equals: ''.!

testAtomTrue	self json: 'true' equals: true.	self json: '  true' equals: true.	self json: 'true  ' equals: true.	self json: '  true  ' equals: true.!

testCtor	self json: '@ILJsonDummyTestObject {"a": 1, "b": 2, "c": 3}' equals: self simpleDummyObject.	self json: (ILJson render: self simpleDummyObject) equals: self simpleDummyObject.!

testDictionary	self json: '{}' equals: (Dictionary new).	self json: '{"a": "a"}' equals: (Dictionary new at: 'a' put: 'a'; yourself).	self json: '{"a": [[]]}' equals: (Dictionary new at: 'a' put: #(#()); yourself).	self json: '{"a":"b", "b":"a"}' equals: ({'a'->'b'. 'b'->'a'} as: Dictionary).!

testMissingCtor	self 		should: [self readFrom: '@Missing[]']		raise: ILJsonSyntaxError!

testMissingCtorNoMap	self 		should: [ILJson new readFrom: '@Missing[]' readStream]		raise: ILJsonSyntaxError!

testWriteString	self render: '"' equals: '"\""'.	self render: '\' equals: '"\\"'.	self render: 'hi' equals: '"hi"'.	self render: (String withAll: {$a. Character lf. $b}) equals: '"a\nb"'.! !
!ILJsonTests categoriesFor: #json:equals:!private! !
!ILJsonTests categoriesFor: #readFrom:!filein/out!public! !
!ILJsonTests categoriesFor: #render:equals:!private! !
!ILJsonTests categoriesFor: #simpleDummyObject!private! !
!ILJsonTests categoriesFor: #testArray!public!tests! !
!ILJsonTests categoriesFor: #testAtomFalse!public!tests! !
!ILJsonTests categoriesFor: #testAtomNull!public!tests! !
!ILJsonTests categoriesFor: #testAtomNumber!public!tests! !
!ILJsonTests categoriesFor: #testAtomString!public!tests! !
!ILJsonTests categoriesFor: #testAtomTrue!public!tests! !
!ILJsonTests categoriesFor: #testCtor!public!tests! !
!ILJsonTests categoriesFor: #testDictionary!public!tests! !
!ILJsonTests categoriesFor: #testMissingCtor!public!tests! !
!ILJsonTests categoriesFor: #testMissingCtorNoMap!public!tests! !
!ILJsonTests categoriesFor: #testWriteString!public!tests! !

