event handling
mouseWheel: anEvent
	"Soft-coded. Fast, feels ok for two-finger scrolling on keypad."

	"Slow at first, then fast with some inertia would be way cool. Could be done by: start stepping on a mouse wheel first event, increase step for each mouse wheel event, let step decrease by itself until stop."

	model ifNil: [ ^ self ].
	self hasVerticalScrollBar
		ifFalse: [ ^ self ].
	wheelIndex := self wheelIndex + 3.
	self
		startStepping: #mouseWheelStep:
		at: Time millisecondClockValue
		arguments: {anEvent copy resetHandlerFields}
		stepTime: self mouseStillDownStepRate