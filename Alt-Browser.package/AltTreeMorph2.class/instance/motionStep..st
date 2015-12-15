accessing
motionStep: aMotion
	"Activate a motion."

	aMotion step
		ifNil: [ self stopSteppingSelector: #motionStep:.
			motion := nil ]