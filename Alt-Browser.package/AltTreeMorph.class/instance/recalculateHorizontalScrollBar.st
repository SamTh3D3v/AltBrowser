private-scrollbars
recalculateHorizontalScrollBar
	| interval |
	model ifNil: [ ^ self ].
	self recalculateHorizontalScrollBarVisibilityIfHidden
		ifTrue: [ ^ self ].
	self container offsetWidth = 0 ifTrue: [ ^ self ].
	interval := (self container width / self container offsetWidth)
		asFloat.
	self horizontalScrollBar interval: interval