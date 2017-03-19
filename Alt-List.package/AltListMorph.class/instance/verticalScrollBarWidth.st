private-scrollbars
verticalScrollBarWidth
	self hasVerticalScrollBar
		ifFalse: [ ^ 0 ].
	^ self scrollBarThickness