private-scrollbars
resizeVerticalScrollBar
	self hasVerticalScrollBar
		ifTrue:
			[ | width height corner |
			width := self verticalScrollBarWidth.
			height := self bounds height - (self borderWidth * 2)
				- self horizontalScrollBarHeight.
			corner := self bounds topRight
				- ((width + self borderWidth) @ (0 - self borderWidth)).
			self verticalScrollBar bounds: (corner extent: width @ height).
			self isVerticalScrollBarVisible
				ifFalse: [ self addMorph: verticalScrollBar ] ]
		ifFalse:
			[ self isVerticalScrollBarVisible
				ifTrue: [ self removeMorph: verticalScrollBar ] ]