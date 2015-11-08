private-scrollbars
recalculateVerticalScrollBar
	"Better: account for partially visible rows."

	| interval delta pageDelta visibleRows numberOfRows |
	model ifNil: [ ^ self ].
	container exposedItems ifNil: [ ^ self ].
	self hasVerticalScrollBar
		ifFalse:
			[ self verticalScrollBar value: 0.
			^ self ].
	visibleRows := self container exposedItems size asFloat
		/
			(self container effectiveHeight / self container height asFloat).
	numberOfRows := self container modelSize asFloat.
	interval := visibleRows / numberOfRows.
	delta := 1.0 / self height.
	pageDelta := interval.
	self verticalScrollBar
		scrollDelta: delta pageDelta: pageDelta;
		interval: interval