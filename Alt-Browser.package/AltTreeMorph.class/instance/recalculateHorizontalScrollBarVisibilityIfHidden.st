private-scrollbars
recalculateHorizontalScrollBarVisibilityIfHidden
	self container effectiveWidth > self container width
		ifFalse:
			[ (self submorphs includes: self horizontalScrollBar)
				ifTrue:
					[ self horizontalScrollBar value: 0.
					self horizontalScrollBarValue: 0.
					self removeMorph: self horizontalScrollBar ].
			^ true ]
		ifTrue:
			[ (self submorphs includes: self horizontalScrollBar)
				ifFalse:
					[ self resizeHorizontalScrollBar.
					self addMorph: self horizontalScrollBar.
					self resizeContainer ].
			^ false ]