"Filed out from Dolphin Smalltalk 7"!

SwazooSite subclass: #ILSite
	instanceVariableNames: 'codec'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILSite guid: (GUID fromString: '{a898dc76-a96f-4dc8-9ac8-8ff0c6ccdf86}')!
ILSite comment: ''!
!ILSite categoriesForClass!Unclassified! !
!ILSite methodsFor!

answerTo: aRequest
	[ILDispatcher current 
	    dispatch: (self convertRequest: aRequest)]
		on: ILResponseNotification
		do: [:n | 
		    ^self convertResponse: n response]!

codec
	^codec ifNil: [codec := self defaultCodec]!

codec: aCodec
	codec := aCodec!

convertHeader: aSwazooRequest
	| swazooFields fields |
	swazooFields := aSwazooRequest headers fields.
	fields := Dictionary new: swazooFields size.
	swazooFields keysAndValuesDo: [:key :field || value |
	    value := String streamContents: [:stream | field valuesAsStringOn: stream].
	    fields at: key asLowercase put: value].
	^fields!

convertPostDataFrom: aValue
	^(aValue filename isNil or: [aValue filename isEmpty])
	    ifTrue: [self decode: aValue value]
	    ifFalse: [ILTempFile fromChunk: aValue]!

convertRequest: aSwazooRequest
	^ILRequest new
	    method: aSwazooRequest methodName;
	    url: (ILUrl absolute: aSwazooRequest uriString);
	    headers: (self convertHeader: aSwazooRequest);
	    fields: (self parseFields: aSwazooRequest);
	    cookies: (self parseCookies: aSwazooRequest);
	    nativeRequest: aSwazooRequest;
	    yourself!

convertResponse: aResponse
	| swazooResponse |
	swazooResponse := HTTPResponse new.
	aResponse headers do: [:each |
	    | field fieldClass |
	    fieldClass := HeaderField classForFieldName: each key.
	    field := fieldClass newForFieldName: each key withValueFrom: each value.
	    swazooResponse headers addField: field].
	aResponse cookies do: [:each |
	    swazooResponse cookie: (self cookieHeaderFor: each)].
	swazooResponse code: aResponse status.
	swazooResponse entity: ((self isBinaryResponse: aResponse)
	    ifTrue: [aResponse contents]
	    ifFalse: [self encode: aResponse contents]).
	swazooResponse contentType: aResponse contentType greaseString.
	aResponse release.
	^swazooResponse!

cookieHeaderFor: aCookie
	^String streamContents: [:stream |
	    stream
		nextPutAll: aCookie key;
		nextPutAll: '=';
		nextPutAll: (aCookie value ifNil: ['']).
	    aCookie path isNil ifFalse: [
		stream
		    nextPutAll: '; path=';
		    nextPutAll: aCookie path].
	    aCookie expiry isNil ifFalse: [
		stream
		    nextPutAll: '; expires=';
		    nextPutAll: aCookie expiryString]]!

decode: aString
	^self codec decode: aString!

defaultCodec
	^GRNullCodec new!

encode: aString
	^self codec encode: aString!

helpResolve: aResolution
	(self canAnswer and: [aResolution siteMatch: self]) ifFalse: [^nil].
	^self answerTo: aResolution request!

internalErrorResponseFor: anError
	^HTTPResponse internalServerError
	    entity: '<h1>Internal error</h1>'
	    yourself!

isBinaryResponse: aResponse
	| tokens type subTypes |
	tokens := aResponse contentType subStrings:  '/'.
	type := tokens first.
	type = 'text' ifTrue: [^false].
	tokens size = 1 ifTrue: [^true].
	subTypes := tokens second subStrings: '\+'.
	^subTypes noneSatisfy: [:each |
	    #('x-javascript' 'xml' 'json') includes: each]!

parseCookies: aSwazooRequest
	| cookies swazooCookies cookieLine |
	cookies := Dictionary new.
	cookieLine := aSwazooRequest cookie.
	(cookieLine isNil or: [cookieLine isEmpty]) ifTrue: [^cookies].
	swazooCookies := cookieLine subStrings: ';'.
	swazooCookies do: [:each || pair key value |
	    pair := each subStrings: '='.
	    key := SpStringUtilities trimBlanksFrom: pair first.
	    value := pair size > 1 
		ifTrue: [SpStringUtilities trimBlanksFrom: pair second]
		ifFalse: [nil].
	    cookies at: key put: value].
	^cookies!

parseFields: aSwazooRequest
	| fields |
	fields := Dictionary new.
	aSwazooRequest isPost 
	    ifTrue: ["break encapsulation"

		aSwazooRequest ensureFullRead.
		aSwazooRequest postData keysAndValuesDo: [:key :value | 
		    | previousData data |
		    data := self convertPostDataFrom: value.
		    previousData := fields at: key ifAbsent: [nil].
		    previousData isNil 
			ifTrue: [fields at: key put: data]
			ifFalse: [
			    (previousData isKindOf: OrderedCollection) 
				ifTrue: [previousData add: data]
				ifFalse: [fields at: key put: (OrderedCollection with: previousData with: data)]]]]
	    ifFalse: 
		[aSwazooRequest queries do: [:each | fields at: each key put: each value]].
	^fields! !
!ILSite categoriesFor: #answerTo:!public!serving! !
!ILSite categoriesFor: #codec!accessing!public! !
!ILSite categoriesFor: #codec:!accessing!public! !
!ILSite categoriesFor: #convertHeader:!public!serving! !
!ILSite categoriesFor: #convertPostDataFrom:!public!serving! !
!ILSite categoriesFor: #convertRequest:!public!serving! !
!ILSite categoriesFor: #convertResponse:!public!serving! !
!ILSite categoriesFor: #cookieHeaderFor:!public!serving! !
!ILSite categoriesFor: #decode:!public!serving! !
!ILSite categoriesFor: #defaultCodec!defaults!public! !
!ILSite categoriesFor: #encode:!public!serving! !
!ILSite categoriesFor: #helpResolve:!public!serving! !
!ILSite categoriesFor: #internalErrorResponseFor:!public!serving! !
!ILSite categoriesFor: #isBinaryResponse:!public!testing! !
!ILSite categoriesFor: #parseCookies:!public!serving! !
!ILSite categoriesFor: #parseFields:!public!serving! !

!ILSite class methodsFor!

default
	self ensureRegistered.
	^self named: self defaultName!

defaultHost
	^'*'!

defaultIp 
	^'*'!

defaultName
	^'IliadSite'!

defaultPort
	^8080!

ensureRegistered
	(self named: self defaultName) 
	    ifNil: [self newDefaultOn: self defaultPort]
!

new
	^self basicNew!

newDefault

	^self newDefaultOn: self defaultPort!

newDefaultOn: aPort
	^(self newNamed: self defaultName) 
	    host: self defaultHost
	    ip: self defaultIp
	    port: aPort! !
!ILSite class categoriesFor: #default!defaults!public! !
!ILSite class categoriesFor: #defaultHost!defaults!public! !
!ILSite class categoriesFor: #defaultIp!defaults!public! !
!ILSite class categoriesFor: #defaultName!defaults!public! !
!ILSite class categoriesFor: #defaultPort!defaults!public! !
!ILSite class categoriesFor: #ensureRegistered!defaults!public! !
!ILSite class categoriesFor: #new!instance creation!public! !
!ILSite class categoriesFor: #newDefault!instance creation!public! !
!ILSite class categoriesFor: #newDefaultOn:!instance creation!public! !

