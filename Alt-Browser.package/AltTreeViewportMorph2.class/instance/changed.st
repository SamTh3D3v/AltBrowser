accessing
changed
	"Normal display change."

	self owner ifNil: [ ^ self ].
	self updateRows.
	self owner
		resizeVerticalScrollBar;
		resizeHorizontalScrollBar;
		recalculateHorizontalScrollBar;
		recalculateVerticalScrollBar.
	^ fullBounds
		ifNil: [ self invalidRect: self privateFullBounds ]
		ifNotNil: [ self invalidRect: fullBounds ]