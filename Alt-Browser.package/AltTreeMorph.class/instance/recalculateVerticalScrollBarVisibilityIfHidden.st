private-scrollbars
recalculateVerticalScrollBarVisibilityIfHidden
	self container calculateExactVisibleRows >= model size
		ifTrue:
			[ (self submorphs includes: self verticalScrollBar)
				ifTrue: [ self removeMorph: self verticalScrollBar ].
			self resizeContainer.
			^ true ]
		ifFalse:
			[ (self submorphs includes: self verticalScrollBar)
				ifFalse:
					[ self resizeVerticalScrollBar.
					self addMorph: self verticalScrollBar ].
			^ false ]