event handling
rejectDropEvent: anEvent
	"We have a drop event, we may reject it. Don't forget to release the focus there."

	anEvent hand releaseMouseFocus: self.
	stepIndex := 0.
	^ super rejectDropEvent: anEvent