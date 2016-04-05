private
resizeViewport
	"Take in account effective width and height of the scrollbars (0 if hidden)."

	| width height doubleBorder |
	doubleBorder := self borderWidth * 2.
	width := self bounds width - doubleBorder
		- self verticalScrollBarWidth.
	height := self bounds height - doubleBorder
		- self horizontalScrollBarHeight.
	self viewport
		bounds:
			(self bounds topLeft + (self borderWidth @ self borderWidth)
				extent: width @ height)