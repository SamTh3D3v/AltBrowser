event handling
handleMouseMove: anEvent
	"Reimplemented because we really want #mouseMove when a morph is dragged around"

	anEvent wasHandled
		ifTrue: [ ^ self ].	"not interested"
	anEvent anyButtonPressed
		ifFalse: [ ^ self ].
	anEvent isDraggingEvent
		ifFalse: [ ^ self ].
	anEvent wasHandled: true.
	self mouseMove: anEvent.
	(self handlesMouseStillDown: anEvent)
		ifTrue:
			[ self
				startStepping: #handleMouseStillDown:
				at: Time millisecondClockValue
				arguments: {anEvent copy resetHandlerFields}
				stepTime: self mouseStillDownStepRate ]