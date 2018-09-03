﻿"Filed out from Dolphin Smalltalk 7"!

ILObject subclass: #ILUrlBuilder
	instanceVariableNames: 'baseUrl'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'actionKey hashKey sessionKey ajaxUploadKey stateKey rewriteRules jsonKey'!
ILUrlBuilder guid: (GUID fromString: '{fdfcf442-2bd1-47ee-a061-2aad4233a715}')!
ILUrlBuilder comment: ''!
!ILUrlBuilder categoriesForClass!Iliad-Core-Sessions! !
!ILUrlBuilder methodsFor!

actionKey

addDefaultParametersTo: anUrl

applyRewriteRulesTo: anUrl

baseUrl

buildBaseUrl 

hashKey

rewriteRules

sessionKey

shouldUseSessionField

stateKey

urlFor: aString

urlForAction: anAction

urlForAction: anAction hash: aHashString

urlForActionKey: aKey

urlForActionKey: aKeyString hash: aHashString

urlForFormAction

urlForRedirection: aString
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

actionKey

addRewriteRule: aBlock

ajaxUploadKey

defaultActionKey

defaultAjaxUploadKey

defaultHashKey

defaultJsonKey

defaultSessionKey

defaultStateKey

hashKey

jsonKey

rewriteRules

sessionKey

stateKey
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
