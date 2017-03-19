accessing-color
selectionColor
	^ selectionColor ifNil: [ Smalltalk ui theme selectionColor ]