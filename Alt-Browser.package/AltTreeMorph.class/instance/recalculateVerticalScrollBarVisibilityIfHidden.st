private-scrollbars
recalculateVerticalScrollBarVisibilityIfHidden
	"Switch on or off the vertical scroll bar. Expect a resize of the container?"

	(self container exposedItems size = self model size
		and:
			[ self container effectiveHeight <= self container height ])
		ifTrue:
			[ (self submorphs includes: self verticalScrollBar)
				ifTrue:
					[ self verticalScrollBar value: 0.
					self verticalScrollBarValue: 0.
					self removeMorph: self verticalScrollBar ].
			^ true ]
		ifFalse:
			[ (self submorphs includes: self verticalScrollBar)
				ifFalse:
					[ self resizeVerticalScrollBar.
					self addMorph: self verticalScrollBar ].
			^ false ]