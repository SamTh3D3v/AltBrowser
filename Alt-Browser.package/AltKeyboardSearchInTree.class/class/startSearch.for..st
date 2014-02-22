instance creation
startSearch: anEvent for: aMorph
	"This is a generic entry point for searching in a tree. Should refuse meta and alt key ."

	(anEvent keyCharacter isAlphaNumeric and: [ anEvent anyModifierKeyPressed not ])
		ifTrue: [ self new execute: anEvent for: aMorph ]