accessing
verticalValue: aFloat
	"A floating point value between 0.0 and 1.0"

	self assert: (aFloat < 0.0 or: [ aFloat > 1.0 ]) not.
	verticalValue := aFloat.
	aFloat logCr