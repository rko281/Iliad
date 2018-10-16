"Filed out from Dolphin Smalltalk 7"!

ILDirectory subclass: #ILFileDirectory
	instanceVariableNames: 'directory path'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ILFileDirectory guid: (GUID fromString: '{7835c7b2-d96f-4598-a4ea-a16d7b8d88a7}')!
ILFileDirectory comment: 'A basic Iliad directory that maps to a filesystem using a FileDirectory instance.The path instance variable holds the URL path needed to reach this directory, and is totally independent of the disk path to the directory on disk."The following registers an ILFileDirectory serving files from FileDirectory default on / "ILFileHandler directories add: (ILFileDirectory directory: FileDirectory default) '!
!ILFileDirectory categoriesForClass!Iliad-Core-RequestHandlers! !
!ILFileDirectory methodsFor!

adjustPath: urlPath	"This is a bit primitive, but we match and remove	path from url."		^urlPath copyWithRegex: '^', self path 		matchesReplacedWith: ''!

directory	^directory!

directory: aFSReference	directory := aFSReference!

fileContentsFor: anUrlPath	"Return a FSRReference for local path	or nil if not found. We do not want	multibyte translations etc for given filename."		| file filename |	file := self directory.	filename := self adjustPath: anUrlPath.	filename isEmpty ifTrue: [ ^ nil ].	(filename findTokens: '/') do: [ :fragment | 		file := file / fragment ].	^file isFile		ifTrue: [ StandardFileStream readOnlyFileNamed: file pathString ]		ifFalse: [ nil ]!

path	^path ifNil: ['/']!

path: aPath	path := aPath! !
!ILFileDirectory categoriesFor: #adjustPath:!private! !
!ILFileDirectory categoriesFor: #directory!accessing!public! !
!ILFileDirectory categoriesFor: #directory:!accessing!public! !
!ILFileDirectory categoriesFor: #fileContentsFor:!accessing!public! !
!ILFileDirectory categoriesFor: #path!accessing!public! !
!ILFileDirectory categoriesFor: #path:!accessing!public! !

!ILFileDirectory class methodsFor!

directory: aFSReference	^self new directory: aFSReference; yourself! !
!ILFileDirectory class categoriesFor: #directory:!private! !

