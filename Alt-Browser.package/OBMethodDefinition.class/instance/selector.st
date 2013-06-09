accessing
selector
	^ source isNil ifFalse: [ Parser new parseSelector: source ]