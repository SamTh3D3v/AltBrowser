event handling
keyStroke: event
	(super keyStroke: event)
		ifTrue: [ ^ true ].
	(self navigationKey: event)
		ifTrue: [ ^ true ].
	^ false