accessing pixel-based
maxHeight
	^ maxHeight ifNil: [ ^ self approxMaxHeight ]