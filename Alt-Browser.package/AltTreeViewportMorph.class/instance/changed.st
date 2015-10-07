updating
changed
	self owner ifNil: [ ^ self ].
	self setNeedsRefreshExposedItems.
	super changed