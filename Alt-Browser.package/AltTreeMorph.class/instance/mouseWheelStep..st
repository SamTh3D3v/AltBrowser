event handling
mouseWheelStep: event
	"Slow at first, then fast with some inertia would be way cool. Could be done by: start stepping on a mouse wheel first event, increase step for each mouse wheel event, let step decrease by itself until stop."

	(motion := motion step)
		ifNil: [ self stopSteppingSelector: #mouseWheelStep: ]