accessing
recalculateVerticalScrollBar
	"Better: account for partially visible rows."

	"Change: estimate that delta is based on rows of 24 pixels high; reduce delta if height / visibleRows > 24, and increase delta otherwise? (maintain a constant pixel-equivalent delta)."

	| interval delta pageDelta visibleRows numberOfRows |
	model ifNil: [ ^ self ].
	self viewport
		in: [ :v | 
			v exposedItems ifNil: [ ^ self ].
			self hasVerticalScrollBar
				ifFalse: [ self verticalScrollBar
						value: 0;
						scrollDelta: 0 pageDelta: 0.
					^ self ].
			visibleRows := v exposedItems size asFloat
				/ (v effectiveHeight / v height asFloat).
			numberOfRows := v modelSize asFloat.
			interval := visibleRows / numberOfRows.
			delta := 1.0 / numberOfRows / (v topRow height / 24.0).
			pageDelta := interval max: delta.
			self verticalScrollBar
				setScrollValue: v findCurrentVerticalValue;
				scrollDelta: delta pageDelta: pageDelta;
				interval: interval ]