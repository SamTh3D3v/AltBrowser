instance creation
startSearch: anEvent for: aMorph
	"This is a generic entry point for searching in a tree."

	anEvent keyCharacter isAlphaNumeric
		ifTrue: [ self new execute: anEvent for: aMorph ]