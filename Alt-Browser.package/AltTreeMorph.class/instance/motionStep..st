event handling
motionStep: aMotion
	"Activate a motion."

	aMotion step ifNil: [ self stopSteppingSelector: #motionStep: ]