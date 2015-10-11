private-scrollbars
horizontalScrollBarHeight
	^ self isHorizontalScrollBarVisible
		ifTrue: [ self scrollBarThickness ]
		ifFalse: [ 0 ]