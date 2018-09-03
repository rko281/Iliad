"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILRouteTest
	instanceVariableNames: 'route'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILRouteTest guid: (GUID fromString: '{49f5377c-dcea-421c-9b18-2e011fc35c9b}')!
ILRouteTest comment: ''!
!ILRouteTest categoriesForClass!Iliad-Tests-Dispatching! !
!ILRouteTest methodsFor!

setUp	route := ILRoute path: (ILUrl absolute: 'hello/world/foo/bar') path.!

testBasePath	self assert: route basePath equals: '/hello'!

testPath	self		assert: route path asArray		equals: #('hello' 'world' 'foo' 'bar')!

testStreaming	| string |	string := route next.	self assert: string equals: 'hello'.	self assert: route peek equals: 'world'.	string := route next.	self assert: string equals: 'world'.	string := route next.	self assert: string equals: 'foo'.	string := route next.	self assert: string equals: 'bar'.	string := route next.	self assert: string equals: nil.	string := route next.	self assert: string equals: nil.	string := route		reset;		next.	self assert: string equals: 'hello'!

testUriString	self assert: route uriString equals: '/hello/world/foo/bar'! !
!ILRouteTest categoriesFor: #setUp!public!running! !
!ILRouteTest categoriesFor: #testBasePath!public!testing! !
!ILRouteTest categoriesFor: #testPath!public!testing! !
!ILRouteTest categoriesFor: #testStreaming!public!testing! !
!ILRouteTest categoriesFor: #testUriString!public!testing! !

