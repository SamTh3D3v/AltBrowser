accessing
changed
	"Normal display change. I receive that when my bounds / my scrollbar have changed."

	self owner ifNil: [ ^ self ].
	self owner model ifNil: [ ^ self ].
	self updateRows.
	self owner
		resizeVerticalScrollBar;
		resizeHorizontalScrollBar;
		recalculateHorizontalScrollBar;
		recalculateVerticalScrollBar.
	^ fullBounds
		ifNil: [ self invalidRect: self privateFullBounds ]
		ifNotNil: [ self invalidRect: fullBounds ]