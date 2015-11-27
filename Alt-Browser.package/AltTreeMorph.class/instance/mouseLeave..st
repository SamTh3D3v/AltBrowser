event handling
mouseLeave: event
	"The mouse has left."

	event hand releaseMouseFocus: self.
	stepIndex := 0.
	super mouseLeave: event