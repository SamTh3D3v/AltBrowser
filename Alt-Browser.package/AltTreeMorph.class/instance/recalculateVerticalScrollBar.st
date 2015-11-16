private-scrollbars
recalculateVerticalScrollBar
	"Better: account for partially visible rows."

	| interval delta pageDelta visibleRows numberOfRows |
	model ifNil: [ ^ self ].
	self viewport
		in:
			[ :v | 
			v exposedItems ifNil: [ ^ self ].
			self hasVerticalScrollBar
				ifFalse:
					[ self verticalScrollBar
						value: 0;
						scrollDelta: 0 pageDelta: 0.
					^ self ].
			visibleRows := v exposedItems size asFloat
				/ (v effectiveHeight / v height asFloat).
			numberOfRows := v modelSize asFloat.
			interval := visibleRows / numberOfRows.
			delta := 1.0 / numberOfRows.
			pageDelta := interval max: delta.
			self verticalScrollBar scrollDelta isZero
				ifFalse:
					[ self verticalScrollBar
						value:
							self verticalScrollBar value / self verticalScrollBar scrollDelta
								* delta ].
			self verticalScrollBar
				scrollDelta: delta pageDelta: pageDelta;
				interval: interval ]