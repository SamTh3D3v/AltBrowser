private-scrollbars
recalculateVerticalScrollBar
	| interval delta pageDelta visibleRows numberOfRows |
	model ifNil: [ ^ self ].
	self recalculateVerticalScrollBarVisibilityIfHidden
		ifTrue: [ ^ self ].
	visibleRows := self container calculateExactVisibleRows.
	numberOfRows := model size.
	interval := ((visibleRows - 1) / numberOfRows) asFloat.
	delta := 1 / numberOfRows.
	pageDelta := (visibleRows - 1) floor * delta.
	self verticalScrollBar
		scrollDelta: delta pageDelta: pageDelta;
		interval: interval