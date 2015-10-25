private-scrollbars
recalculateVerticalScrollBar
	"Better: account for partially visible rows."

	| interval delta pageDelta visibleRows numberOfRows |
	model ifNil: [ ^ self ].
	container exposedItems ifNil: [ ^ self ].
	self recalculateVerticalScrollBarVisibilityIfHidden
		ifTrue: [ ^ self ].
	visibleRows := self container exposedItems size asFloat
		/
			(self container effectiveHeight / self container height asFloat).
	numberOfRows := model size asFloat.
	interval := visibleRows / numberOfRows.
	delta := 1.0 / self height.
	pageDelta := visibleRows * delta.
	self verticalScrollBar
		scrollDelta: delta pageDelta: pageDelta;
		interval: interval