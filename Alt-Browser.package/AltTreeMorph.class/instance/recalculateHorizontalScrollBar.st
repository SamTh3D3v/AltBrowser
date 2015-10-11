private-scrollbars
recalculateHorizontalScrollBar
	| interval |
	model ifNil: [ ^ self ].
	self recalculateHorizontalScrollBarVisibilityIfHidden
		ifTrue: [ ^ self ].
	interval := (self container width / self container offsetWidth)
		asFloat.
	self horizontalScrollBar interval: interval