event handling
mouseLeaveDragging: event
	"The mouse has left with a button down."

	event hand hasSubmorphs
		ifFalse: [ ^ super mouseLeaveDragging: event ].	"no d&d"
	dropIndex := nil.
	event hand releaseMouseFocus: self.
	self refresh