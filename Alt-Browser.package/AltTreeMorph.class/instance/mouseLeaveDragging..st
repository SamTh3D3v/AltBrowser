event handling
mouseLeaveDragging: event
	"The mouse has left with a button down."

	(self dropEnabled and: [ event hand hasSubmorphs ])
		ifFalse: [ ^ super mouseLeaveDragging: event ].	"no d&d"
	event hand releaseMouseFocus: self.
	dropIndex := nil.
	self refresh