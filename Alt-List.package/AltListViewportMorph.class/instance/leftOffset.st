accessing
leftOffset
	^ ((self effectiveWidth - self width)
		* self owner horizontalScrollBar value) truncated