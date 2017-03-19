private-scrollbars
verticalStep
	"Compute the step to use for scrolling: it is dependent on the row height, but must be a rounded number of steps."

	^ (((self viewport exposedItems at: self viewport baselineIndex)
		height / 24) rounded max: 1) asFloat