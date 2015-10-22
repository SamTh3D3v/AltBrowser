private-scrollbars
recalculateVerticalScrollBar
	| interval delta pageDelta visibleRows numberOfRows |
	model ifNil: [ ^ self ].
	container exposedItems ifNil: [  ^ self ].
	self recalculateVerticalScrollBarVisibilityIfHidden
		ifTrue: [ ^ self ].
	visibleRows := self container calculateMaxVisibleRows asFloat.
	numberOfRows := model size asFloat.
	interval := visibleRows / numberOfRows.
	delta := 1.0 / (self container maxShowIndex - 1).
	pageDelta := visibleRows * delta.
	self verticalScrollBar
		scrollDelta: delta pageDelta: pageDelta;
		interval: interval