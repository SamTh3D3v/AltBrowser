private-scrollbars
recalculateHorizontalScrollBarVisibilityIfHidden
	self container offsetWidth <= self container width
		ifTrue:
			[ (self submorphs includes: self horizontalScrollBar)
				ifTrue: [ self removeMorph: self horizontalScrollBar ].
			self resizeContainer.
			^ true ]
		ifFalse:
			[ (self submorphs includes: self horizontalScrollBar)
				ifFalse:
					[ self resizeHorizontalScrollBar.
					self addMorph: self horizontalScrollBar.
					self resizeContainer ].
			^ false ]