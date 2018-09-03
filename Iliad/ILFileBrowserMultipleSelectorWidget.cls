"Filed out from Dolphin Smalltalk 7"!

ILFileBrowserListWidget subclass: #ILFileBrowserMultipleSelectorWidget
	instanceVariableNames: 'selections buttonsClass controlsContainerClass buttons'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileBrowserMultipleSelectorWidget guid: (GUID fromString: '{0499639a-0cec-465c-ab86-9edb7a2c9718}')!
ILFileBrowserMultipleSelectorWidget comment: 'A simple multiple files selector (check boxes) widget for one-level browsing, based in the Iliad Class Browser  example.Internal Representation and Key Implementation Points.    Instance Variables	buttonsClass:	<String>			CSS class for buttons 	selections:		<Collection>		Selected file/directory items    Implementation Points'!
!ILFileBrowserMultipleSelectorWidget categoriesForClass!Iliad-More-UI! !
!ILFileBrowserMultipleSelectorWidget methodsFor!

add: fileName	^ self selections add: fileName!

buildResponse	| selectedFile fileStream  |	selectedFile := self selections anyOne.	fileStream := StandardFileStream readOnlyFileNamed: selectedFile. " asFileReference readStream."	(ILFileHandler isBinary: selectedFile)			ifTrue: [ fileStream binary ].	^ ILResponse ok		allowResumedDownload;		attachmentWithFileName: selectedFile;		contentType: fileStream contentType;		contents: fileStream;		setBinaryEncoding;		yourself.!

buttons	^ buttons		ifNil: [ buttons := OrderedCollection new ]!

buttons: anObject	^ buttons := anObject!

buttonsClass	" Answer a <String> with CSS class for receiver's buttons "		^ buttonsClass		ifNil: [ buttonsClass := String empty ]!

buttonsClass: anObject	buttonsClass := anObject!

contents	^ [ : e |		e h1: self title.		e style: 'float: left; text-align: left; width: 80%; margin-left: 5em;'.		e form			useGet;			build: [ : form |				self renderFilenamesOf: self rootDirectory on: form ul.				self renderButtonsOn: form ] ]!

controlsContainerClass	" Private - Answer a <String> representing a CSS class for grouping the receiver's elements "		^ controlsContainerClass 		ifNil: [ controlsContainerClass := String empty ]!

controlsContainerClass: anObject	^ controlsContainerClass := anObject!

downloadSelections	self selections isEmpty ifTrue: [ ^ self ].	self application returnResponse: self buildResponse!

remove: fileName	^ self selections remove: fileName!

renderButtonsOn: e	e div 		class: self controlsContainerClass;		build: [ : div |			self buttons do: [ : each |				div button					cssClass: self buttonsClass;					text: each key;					action: [ self perform: each value ]  ] ] !

renderFilenamesOf: aDirectoryEntry on: builder	" Private - Render a list with sorted elements found in aDirectoryEntry "	(self sortedFilenamesForDirectory: aDirectoryEntry)		do: [: fileName |			builder checkbox				onClickDo: [ self selectFile: (aDirectoryEntry asFileReference / fileName) fullName ];				text: fileName ]		separatedBy: [ builder br ]!

selectFile: aString 	(self selections includes: aString)		ifTrue: [ self remove: aString ]		ifFalse: [ self add: aString ]!

selections	^ selections		ifNil: [ selections := OrderedCollection new ]! !
!ILFileBrowserMultipleSelectorWidget categoriesFor: #add:!accessing!public! !
!ILFileBrowserMultipleSelectorWidget categoriesFor: #buildResponse!actions!public! !
!ILFileBrowserMultipleSelectorWidget categoriesFor: #buttons!accessing!public! !
!ILFileBrowserMultipleSelectorWidget categoriesFor: #buttons:!accessing!public! !
!ILFileBrowserMultipleSelectorWidget categoriesFor: #buttonsClass!css!public! !
!ILFileBrowserMultipleSelectorWidget categoriesFor: #buttonsClass:!css!public! !
!ILFileBrowserMultipleSelectorWidget categoriesFor: #contents!building!public! !
!ILFileBrowserMultipleSelectorWidget categoriesFor: #controlsContainerClass!css!public! !
!ILFileBrowserMultipleSelectorWidget categoriesFor: #controlsContainerClass:!css!public! !
!ILFileBrowserMultipleSelectorWidget categoriesFor: #downloadSelections!actions!public! !
!ILFileBrowserMultipleSelectorWidget categoriesFor: #remove:!accessing!public! !
!ILFileBrowserMultipleSelectorWidget categoriesFor: #renderButtonsOn:!building!public! !
!ILFileBrowserMultipleSelectorWidget categoriesFor: #renderFilenamesOf:on:!building!public! !
!ILFileBrowserMultipleSelectorWidget categoriesFor: #selectFile:!actions!public! !
!ILFileBrowserMultipleSelectorWidget categoriesFor: #selections!accessing!public! !

