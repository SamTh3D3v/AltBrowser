private-scrollbars
horizontalScrollBarHeight
	^ self hasHorizontalScrollBar
		ifTrue: [ self scrollBarThickness ]
		ifFalse: [ 0 ]