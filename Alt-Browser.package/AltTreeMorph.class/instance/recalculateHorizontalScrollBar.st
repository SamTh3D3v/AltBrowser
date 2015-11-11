private-scrollbars
recalculateHorizontalScrollBar
	| interval delta |
	model ifNil: [ ^ self ].
	self hasHorizontalScrollBar
		ifFalse: [ self horizontalScrollBar value: 0.
			^ self ].
	self viewport
		in:
			[ :v | 
			interval := (v width / v effectiveWidth) asFloat.
			delta := 1.0 / (v effectiveWidth - v width).
			self horizontalScrollBar
				interval: interval;
				scrollDelta: delta pageDelta: interval ]