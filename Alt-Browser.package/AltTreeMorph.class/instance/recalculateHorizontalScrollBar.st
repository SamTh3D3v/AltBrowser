private-scrollbars
recalculateHorizontalScrollBar
	| interval delta |
	model ifNil: [ ^ self ].
	self hasHorizontalScrollBar
		ifFalse: [ ^ self ].
	interval := (self container width / self container effectiveWidth)
		asFloat.
	delta := 1.0 / (self container effectiveWidth - self container width).
	self horizontalScrollBar
		interval: interval;
		scrollDelta: delta pageDelta: 10 * delta