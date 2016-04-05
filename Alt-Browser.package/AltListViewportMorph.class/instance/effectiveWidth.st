accessing
effectiveWidth
	"The max of both the offsetWidth and the viewport width."

	maximumWidth ifNil: [ ^ self width ].
	^ maximumWidth max: self width