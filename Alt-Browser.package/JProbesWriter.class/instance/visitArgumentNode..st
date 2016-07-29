visiting
visitArgumentNode: each
	"Here to allow subclasses to detect arguments or temporaries."

	no := no + 1.
	^ self visitVariableNode: each