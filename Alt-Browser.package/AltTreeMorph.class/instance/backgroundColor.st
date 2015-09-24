accessing-color
backgroundColor
	^ backgroundColor ifNil: [ self class defaultBackgroundColor ]