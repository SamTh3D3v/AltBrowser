accessing
motionStep: aMotion
	"Activate a motion."

	motion step
		ifNil: [ self stopSteppingSelector: #motionStep:.
			motion := nil ]