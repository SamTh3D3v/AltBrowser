private-scrollbars
resizeVerticalScrollBar
	| width height corner |
	width := self scrollBarThickness.
	height := self bounds height - (self borderWidth * 2)
		- self horizontalScrollBarHeight - 1.
	corner := self bounds topRight
		- ((width + self borderWidth + 1) @ (0 - self borderWidth)).
	self verticalScrollBar bounds: (corner extent: width @ height)