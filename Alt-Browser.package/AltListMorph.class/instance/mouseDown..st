event handling
mouseDown: anEvent
	self wantsKeyboardFocus
		ifTrue: [ self takeKeyboardFocus ].
	anEvent hand newMouseFocus: self event: anEvent.
	(anEvent yellowButtonPressed
		and: [ (self commandOrCrontrolKeyPressed: anEvent) not ])
		ifTrue: [ self
				showMenuForRowIndex: (self viewport rowIndexContainingPoint: anEvent cursorPoint) ]
		ifFalse: [ anEvent hand
				waitForClicksOrDrag: self
				event: anEvent
				selectors: #(nil #doubleClick: #doubleClickTimeout: #startDrag:)
				threshold: 10 ]