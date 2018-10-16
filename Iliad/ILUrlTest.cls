"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILUrlTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILUrlTest guid: (GUID fromString: '{70b6572a-91b9-47da-87fe-c5425bce3bb4}')!
ILUrlTest comment: ''!
!ILUrlTest categoriesForClass!Iliad-Tests-lib-HTTP! !
!ILUrlTest methodsFor!

testAddParameters	| url |	url := ILUrl new.	url addParameter: 'foo'.	self assert: (url parameters at: 'foo') equals: nil.	url addParameter: 'foo' value: 'bar'.	self assert: (url parameters at: 'foo') equals: 'bar'!

testParsing	| url |	url := ILUrl		absolute:			'http://nico@www.example.com:8888/foo/bar.html?param1=value1&param2=value2'.	self assert: url username equals: 'nico'.	self assert: url scheme equals: 'http'.	self assert: url hostname equals: 'www.example.com'.	self assert: url port equals: 8888.	self assert: url path size equals: 2.	self assert: url path first equals: 'foo'.	self assert: url path last equals: 'bar.html'.	self assert: (url parameters at: 'param1') equals: 'value1'.	self assert: (url parameters at: 'param2') equals: 'value2'! !
!ILUrlTest categoriesFor: #testAddParameters!public!testing! !
!ILUrlTest categoriesFor: #testParsing!public!testing! !

