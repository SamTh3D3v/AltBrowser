event handling
mouseWheel: anEvent
	"Slow at first, then fast with some inertia."

	"Trying to improve on the formula. Acceleration should be linear (this is the increase here), then top of (0), then have a linear decrease."

	"When I'm still scrolling, I should be able to slow down and revert course."

	model ifNil: [ ^ self ].
	self hasVerticalScrollBar
		ifFalse: [ ^ self ].
	wheelSpeedTarget := self wheelSpeedTarget + 3.
	self world
		ifNotNil:
			[ :w | 
			(w isStepping: self selector: #mouseWheelStep:)
				ifFalse:
					[ self
						startStepping: #mouseWheelStep:
						at: Time millisecondClockValue
						arguments: {anEvent copy resetHandlerFields}
						stepTime: self mouseStillDownStepRate ] ]