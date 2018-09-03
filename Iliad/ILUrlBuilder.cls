"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILUrlBuilder
	instanceVariableNames: 'baseUrl'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'actionKey hashKey sessionKey ajaxUploadKey stateKey rewriteRules jsonKey'!
ILUrlBuilder guid: (GUID fromString: '{fdfcf442-2bd1-47ee-a061-2aad4233a715}')!
ILUrlBuilder comment: ''!
!ILUrlBuilder categoriesForClass!Iliad-Core-Sessions! !
!ILUrlBuilder methodsFor!

actionKey	^self class actionKey!

addDefaultParametersTo: anUrl	self shouldUseSessionField 		ifTrue: [			anUrl 				addParameter: self sessionKey 				value: self session id greaseString ]!

applyRewriteRulesTo: anUrl	| tempUrl |		tempUrl := anUrl.	self rewriteRules do: [:each |		tempUrl := ILUrl absolute: (each value: tempUrl greaseString) ].	^ tempUrl !

baseUrl	baseUrl ifNil: [self buildBaseUrl].	^baseUrl copy!

buildBaseUrl 	| tempUrl |	tempUrl := self context request url copy.	{self stateKey. self actionKey} do: [:each |		tempUrl removeParameter: each].	self application updateBaseUrl: tempUrl.	baseUrl := self applyRewriteRulesTo: tempUrl.	self addDefaultParametersTo: baseUrl!

hashKey	^self class hashKey!

rewriteRules	^self class rewriteRules!

sessionKey	^self class sessionKey!

shouldUseSessionField	^ self session shouldUseSessionField !

stateKey	^self class stateKey!

urlFor: aString	| url |	url := ILUrl absolute: aString.	self addDefaultParametersTo: url.	^self applyRewriteRulesTo: url!

urlForAction: anAction	^self urlForAction: anAction hash: ''!

urlForAction: anAction hash: aHashString	^self urlForActionKey: anAction key hash: aHashString!

urlForActionKey: aKey	^self baseUrl		addParameter: self actionKey value: aKey;		addParameter: self stateKey value: self session stateRegistry key;		yourself!

urlForActionKey: aKeyString hash: aHashString	| url |	url := self baseUrl.	url 		addParameter: self actionKey value: aKeyString;		addParameter: self stateKey value: self session stateRegistry key.	aHashString notEmpty ifTrue: [		url addParameter: self hashKey value: aHashString].	^url!

urlForFormAction	^self baseUrl		addParameter: self stateKey		value: self session stateRegistry key;		yourself!

urlForRedirection: aString	^ILUrl absolute: aString! !
!ILUrlBuilder categoriesFor: #actionKey!accessing!public! !
!ILUrlBuilder categoriesFor: #addDefaultParametersTo:!generating!public! !
!ILUrlBuilder categoriesFor: #applyRewriteRulesTo:!generating!public! !
!ILUrlBuilder categoriesFor: #baseUrl!generating!public! !
!ILUrlBuilder categoriesFor: #buildBaseUrl!private! !
!ILUrlBuilder categoriesFor: #hashKey!accessing!public! !
!ILUrlBuilder categoriesFor: #rewriteRules!accessing!public! !
!ILUrlBuilder categoriesFor: #sessionKey!accessing!public! !
!ILUrlBuilder categoriesFor: #shouldUseSessionField!public!testing! !
!ILUrlBuilder categoriesFor: #stateKey!accessing!public! !
!ILUrlBuilder categoriesFor: #urlFor:!generating!public! !
!ILUrlBuilder categoriesFor: #urlForAction:!generating!public! !
!ILUrlBuilder categoriesFor: #urlForAction:hash:!generating!public! !
!ILUrlBuilder categoriesFor: #urlForActionKey:!generating!public! !
!ILUrlBuilder categoriesFor: #urlForActionKey:hash:!generating!public! !
!ILUrlBuilder categoriesFor: #urlForFormAction!generating!public! !
!ILUrlBuilder categoriesFor: #urlForRedirection:!generating!public! !

!ILUrlBuilder class methodsFor!

actionKey	^ actionKey 		ifNil: [ actionKey := self defaultActionKey ]!

addRewriteRule: aBlock	self rewriteRules add: aBlock!

ajaxUploadKey	^ ajaxUploadKey 		ifNil: [ ajaxUploadKey := self defaultAjaxUploadKey ]!

defaultActionKey	^'_action'!

defaultAjaxUploadKey	^'_ajax_upload'!

defaultHashKey	^'_hash'!

defaultJsonKey	^ '_json'!

defaultSessionKey	^'_session'!

defaultStateKey	^'_state'!

hashKey	^ hashKey 		ifNil: [ hashKey := self defaultHashKey ]!

jsonKey	^ jsonKey 		ifNil: [ jsonKey := self defaultJsonKey ]!

rewriteRules	" Rewrite rules are used to replace patterns in the baseUrl "		^ rewriteRules 		ifNil: [ rewriteRules := OrderedCollection new ]!

sessionKey	^ sessionKey 		ifNil: [ sessionKey := self defaultSessionKey ]!

stateKey	^ stateKey 		ifNil: [ stateKey := self defaultStateKey ]! !
!ILUrlBuilder class categoriesFor: #actionKey!accessing!public! !
!ILUrlBuilder class categoriesFor: #addRewriteRule:!accessing!public! !
!ILUrlBuilder class categoriesFor: #ajaxUploadKey!accessing!public! !
!ILUrlBuilder class categoriesFor: #defaultActionKey!defaults!public! !
!ILUrlBuilder class categoriesFor: #defaultAjaxUploadKey!defaults!public! !
!ILUrlBuilder class categoriesFor: #defaultHashKey!defaults!public! !
!ILUrlBuilder class categoriesFor: #defaultJsonKey!defaults!public! !
!ILUrlBuilder class categoriesFor: #defaultSessionKey!defaults!public! !
!ILUrlBuilder class categoriesFor: #defaultStateKey!defaults!public! !
!ILUrlBuilder class categoriesFor: #hashKey!accessing!public! !
!ILUrlBuilder class categoriesFor: #jsonKey!accessing!public! !
!ILUrlBuilder class categoriesFor: #rewriteRules!accessing!public! !
!ILUrlBuilder class categoriesFor: #sessionKey!accessing!public! !
!ILUrlBuilder class categoriesFor: #stateKey!accessing!public! !

