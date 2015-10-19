updating
changed: aSymbol
	"We have to tell the parent to change."

	parent
		ifNil: [ super changed: aSymbol ]
		ifNotNil: [ parent changed: aSymbol ]