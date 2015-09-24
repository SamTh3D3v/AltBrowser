accessing-color
selectionColor
	^ selectionColor ifNil: [ self class defaultSelectionColor ]