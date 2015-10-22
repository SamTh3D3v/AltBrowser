private-scrollbars
resizeHorizontalScrollBar
	| width height corner |
	height := self scrollBarThickness.
	width := self bounds width - (self borderWidth * 2)
		- self verticalScrollBarWidth.
	corner := self bounds bottomLeft
		- ((0 - self borderWidth) @ (height + self borderWidth)).
	self horizontalScrollBar bounds: (corner extent: width @ height)