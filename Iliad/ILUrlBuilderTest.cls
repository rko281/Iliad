"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ILUrlBuilderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILUrlBuilderTest guid: (GUID fromString: '{6ed6e37e-08ab-4f37-9170-5d3732502c07}')!
ILUrlBuilderTest comment: ''!
!ILUrlBuilderTest categoriesForClass!Iliad-Tests-Sessions! !
!ILUrlBuilderTest methodsFor!

setUp 	ILApplicationMock1 path: 'test'.	ILApplicationMock2 path: 'test/foo'!

tearDown 	ILApplicationMock1 path: nil.	ILApplicationMock2 path: nil!

testParametesInUrls	self		withContextDo: [ self				assert: (ILUrlBuilder new urlFor: '/foo?bar=baz') asString				equals: '/foo?bar=baz' ]!

testUrlForApplication	| app1 app2 |	app1 := ILApplicationMock1 new.	app2 := ILApplicationMock2 new.	self		withContextDo: [ self				assert: (ILUrlBuilder new urlFor: app1 class path) asString				equals: '/test'.			self				assert: (ILUrlBuilder new urlFor: app2 class path) asString				equals: '/test/foo' ]!

withContextDo: aBlock	| session |	session := ILSession new.	ILCurrentContext		use: (ILContext new 			session: session;			request: (ILRequest new 				cookies: (Dictionary new 					at: ILSessionManager current cookieName 					put: session id asString;					yourself)				yourself))		during: aBlock! !
!ILUrlBuilderTest categoriesFor: #setUp!public!running! !
!ILUrlBuilderTest categoriesFor: #tearDown!public!running! !
!ILUrlBuilderTest categoriesFor: #testParametesInUrls!convenience!public! !
!ILUrlBuilderTest categoriesFor: #testUrlForApplication!public!testing! !
!ILUrlBuilderTest categoriesFor: #withContextDo:!convenience!public! !

