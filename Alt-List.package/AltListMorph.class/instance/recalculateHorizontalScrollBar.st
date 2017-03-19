private-scrollbars
recalculateHorizontalScrollBar
	| interval delta eW w |
	model ifNil: [ ^ self ].
	self hasHorizontalScrollBar
		ifFalse:
			[ self horizontalScrollBar
				value: 0;
				interval: 0;
				scrollDelta: 0 pageDelta: 0.
			^ self ].
	eW := self viewport effectiveWidth.
	w := self viewport width.
	interval := (w / eW) asFloat.
	delta := 1.0 / (eW - w).
	self horizontalScrollBar scrollDelta isZero
		ifFalse:
			[ self horizontalScrollBar
				value:
					self horizontalScrollBar value / self horizontalScrollBar scrollDelta
						* delta ].
	self horizontalScrollBar
		interval: interval;
		scrollDelta: delta pageDelta: interval