event handling
mouseLeave: event
	"The mouse has left."

	event hand releaseMouseFocus: self.
	super mouseLeave: event