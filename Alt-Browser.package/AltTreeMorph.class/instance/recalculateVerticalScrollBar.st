private-scrollbars
recalculateVerticalScrollBar
	| interval delta pageDelta visibleRows numberOfRows |
	model ifNil: [ ^ self ].
	self recalculateVerticalScrollBarVisibilityIfHidden
		ifTrue: [ ^ self ].
	visibleRows := self container calculateExactVisibleRows asFloat.
	numberOfRows := model size asFloat.
	interval := visibleRows / numberOfRows.
	delta := 1 / visibleRows.
	pageDelta := (visibleRows - 1) floor * delta.
	self verticalScrollBar
		scrollDelta: delta pageDelta: pageDelta;
		interval: interval