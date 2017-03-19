animation
motionStep: event
	"Check that we have a motion; react to that (step) so that we move."

	(motion isNil or: [(motion := motion step) isNil ])
		ifTrue: [ self stopSteppingSelector: #motionStep: ]