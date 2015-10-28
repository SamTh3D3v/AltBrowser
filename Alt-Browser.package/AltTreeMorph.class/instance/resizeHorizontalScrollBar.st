private-scrollbars
resizeHorizontalScrollBar
	self hasHorizontalScrollBar
		ifTrue:
			[ | width height corner |
			self isHorizontalScrollBarVisible
				ifFalse: [ self addMorph: horizontalScrollBar ].
			height := self horizontalScrollBarHeight.
			width := self bounds width - (self borderWidth * 2)
				- self verticalScrollBarWidth.
			corner := self bounds bottomLeft
				- ((0 - self borderWidth) @ (height + self borderWidth)).
			self horizontalScrollBar bounds: (corner extent: width @ height) ]
		ifFalse:
			[ self isHorizontalScrollBarVisible
				ifTrue: [ self removeMorph: horizontalScrollBar ] ]