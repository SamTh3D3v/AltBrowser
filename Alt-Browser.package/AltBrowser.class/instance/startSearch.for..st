user actions
startSearch: anEvent for: aMorph
	"This is a generic entry point for searching in the tree."

	anEvent keyCharacter isAlphaNumeric
		ifTrue: [ AltKeyboardSearchInTree new execute: anEvent for: aMorph ]