accessing-color
secondarySelectionColor 
	^ secondarySelectionColor ifNil: [ self class defaultSecondarySelectionColor ]