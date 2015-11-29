event handling
mouseWheel: anEvent
	"Slow at first, then fast with some inertia."

	"Trying to improve on the formula. Acceleration should be linear (this is the increase here), then top of (0), then have a linear decrease."

	"The current approach makes guesses on all counts, and has no plateau."

	model ifNil: [ ^ self ].
	self hasVerticalScrollBar
		ifFalse: [ ^ self ].
	wheelSpeedTarget := self wheelSpeedTarget + 4.
	self
		startStepping: #mouseWheelStep:
		at: Time millisecondClockValue
		arguments: {anEvent copy resetHandlerFields}
		stepTime: self mouseStillDownStepRate