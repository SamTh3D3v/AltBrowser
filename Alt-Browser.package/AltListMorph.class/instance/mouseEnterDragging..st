event handling
mouseEnterDragging: event
	self enabled
		ifFalse: [ ^ self ].
	event hand hasSubmorphs
		ifFalse: [ ^ super mouseEnterDragging: event ].
	event hand newMouseFocus: self