event handling
mouseEnterDragging: event
	self enabled
		ifFalse: [ ^ self ].
	(event hand hasSubmorphs and: [ self dropEnabled ])
		ifFalse: [ ^ super mouseEnterDragging: event ].	"no d&d"
	event hand newMouseFocus: self