testing
isModified
	^ self contents anySatisfy: [ :e | e isModified ]