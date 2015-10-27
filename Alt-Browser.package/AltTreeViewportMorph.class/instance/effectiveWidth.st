accessing
effectiveWidth
	"The max of both the offsetWidth and the viewport width."

	offsetWidth ifNil: [ ^ self width ].
	^ offsetWidth max: self width