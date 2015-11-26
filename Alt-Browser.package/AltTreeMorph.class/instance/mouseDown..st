event handling
mouseDown: anEvent
	self wantsKeyboardFocus
		ifTrue: [ self takeKeyboardFocus ].
	anEvent hand newMouseFocus: self event: anEvent.
	anEvent hand waitForClicksOrDrag: self event: anEvent