private
resizeContainer
	| width height doubleBorder |
	doubleBorder := self borderWidth * 2.
	width := self bounds width - doubleBorder
		- self verticalScrollBarWidth.
	height := self bounds height - doubleBorder
		- self horizontalScrollBarHeight.
	self container
		bounds:
			(self bounds topLeft + (self borderWidth @ self borderWidth)
				extent: width @ height)