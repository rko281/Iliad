"Filed out from Dolphin Smalltalk 7"!

ILUIWidget subclass: #ILFileBrowserListWidget
	instanceVariableNames: 'selectedMessage selectedDirectory title displayFileStrategy rootDirectory'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileBrowserListWidget guid: (GUID fromString: '{96a0ede3-091f-4517-b232-b26b1cdd4ddb}')!
ILFileBrowserListWidget comment: 'A simple file browser widget for one-level browsing, based in the Iliad Class Browser  example.Internal Representation and Key Implementation Points.    Instance Variables	contentsWidget:			<Object>	displayFileStrategy:		<Object>	infoWidget:				<Object>	resultsWidget:			<Object>	searchFilename:			<String>	searchRoot:				<FileReference>	selectedDirectory:		<Object>	selectedFile:				<Object>	title:					<String>    Implementation PointsThis widget currently depends on FileSystem API.'!
!ILFileBrowserListWidget categoriesForClass!Iliad-More-UI! !
!ILFileBrowserListWidget methodsFor!

contents	^ [ : e |		e h1: self title.		e style: 'float: left; text-align: left; width: 80%; margin-left: 5em;'.		e form build: [ : form |			self renderFilenamesOf: self rootDirectory on: form ul.			self renderButtonsOn: form ] ]!

defaultRootDirectory	" Answer a <FileReference> for the default browsing root in the receiver's file system "	^ FileSystem workingDirectory!

displayBasenameSelector	^ #basename!

displayFileStrategy	^ displayFileStrategy		ifNil: [ displayFileStrategy := self displayBasenameSelector ]!

displayFullnameSelector	^ #fullName!

renderButtonsOn: e	self subclassResponsibility!

renderFilenamesOf: aDirectoryEntry on: builder	" Private - Render a list with sorted elements found in aDirectoryEntry "	(self sortedFilenamesForDirectory: aDirectoryEntry)		do: [ : fileName |			builder li				onClickDo: [ self selectFile: (aDirectoryEntry asFileReference / fileName) fullName ];				text: fileName ]!

rootDirectories	" Answer a <Collection> of <DirectoryEntry> under receiver's current search root. If does not exists answer the entries found in the current working directory. "	^ self rootDirectory exists		ifTrue: [ self rootDirectory entries ]		ifFalse: [ FileSystem workingDirectory entries ]!

rootDirectory	^ rootDirectory		ifNil: [ rootDirectory := self defaultRootDirectory ]!

rootDirectory: aFileReference	^ rootDirectory := aFileReference!

selectedDirectory	^selectedDirectory!

selectedDirectory: aClass	selectedDirectory := aClass.	self infoWidget markDirty.!

sortedFilenamesForDirectory: aDirectoryEntry	" Answer a <SortedCollection> of enties in aDirectoryEntry "	^ (aDirectoryEntry entries collect: self displayFileStrategy) asSortedCollection!

title	^ title 		ifNil: [ title := 'Select Files' ]!

title: anObject	^ title := anObject! !
!ILFileBrowserListWidget categoriesFor: #contents!building!public! !
!ILFileBrowserListWidget categoriesFor: #defaultRootDirectory!accessing!public! !
!ILFileBrowserListWidget categoriesFor: #displayBasenameSelector!accessing!public! !
!ILFileBrowserListWidget categoriesFor: #displayFileStrategy!accessing!public! !
!ILFileBrowserListWidget categoriesFor: #displayFullnameSelector!accessing!public! !
!ILFileBrowserListWidget categoriesFor: #renderButtonsOn:!building!public! !
!ILFileBrowserListWidget categoriesFor: #renderFilenamesOf:on:!private! !
!ILFileBrowserListWidget categoriesFor: #rootDirectories!private! !
!ILFileBrowserListWidget categoriesFor: #rootDirectory!accessing!public! !
!ILFileBrowserListWidget categoriesFor: #rootDirectory:!accessing!public! !
!ILFileBrowserListWidget categoriesFor: #selectedDirectory!accessing!public! !
!ILFileBrowserListWidget categoriesFor: #selectedDirectory:!actions!public! !
!ILFileBrowserListWidget categoriesFor: #sortedFilenamesForDirectory:!private! !
!ILFileBrowserListWidget categoriesFor: #title!accessing!public! !
!ILFileBrowserListWidget categoriesFor: #title:!accessing!public! !

