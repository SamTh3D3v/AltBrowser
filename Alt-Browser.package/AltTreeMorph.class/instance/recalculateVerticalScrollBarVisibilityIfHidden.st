private-scrollbars
recalculateVerticalScrollBarVisibilityIfHidden
	"Need to reset the scrollbar."

	self container calculateExactVisibleRows >= model size
		ifTrue:
			[ (self submorphs includes: self verticalScrollBar)
				ifTrue:
					[ self verticalScrollBar value: 0.
					self verticalScrollBarValue: 0.
					self removeMorph: self verticalScrollBar ].
			self resizeContainer.
			^ true ]
		ifFalse:
			[ (self submorphs includes: self verticalScrollBar)
				ifFalse:
					[ self resizeVerticalScrollBar.
					self addMorph: self verticalScrollBar ].
			^ false ]