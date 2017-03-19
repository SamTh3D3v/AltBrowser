event handling
mouseLeaveDragging: event
	"The mouse has left with a button down."

	dropIndex := nil.
	event hand releaseMouseFocus: self.
	event hand hasSubmorphs
		ifFalse: [ ^ super mouseLeaveDragging: event ].	"no d&d"
	self refresh