accessing-color
secondarySelectionColor
	^ secondarySelectionColor
		ifNil: [ Smalltalk ui theme secondarySelectionColor ]