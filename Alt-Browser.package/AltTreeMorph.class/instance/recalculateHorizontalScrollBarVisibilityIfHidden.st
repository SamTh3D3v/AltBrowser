private-scrollbars
recalculateHorizontalScrollBarVisibilityIfHidden
	(self submorphs includes: self horizontalScrollBar)
		ifFalse:
			[ self resizeHorizontalScrollBar.
			self addMorph: self horizontalScrollBar.
			self resizeContainer ].
	^ false