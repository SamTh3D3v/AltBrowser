updating
changed
	"Normal display change."

	self owner ifNil: [ ^ self ].
	self setNeedsRefreshRows.
	super changed