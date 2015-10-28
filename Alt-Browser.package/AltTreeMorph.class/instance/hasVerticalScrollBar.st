private-scrollbars
hasVerticalScrollBar
	"Do we need a vertical scrollbar?"

	self model ifNil: [ ^ false ].
	self container exposedItems ifNil: [ ^ false ].
	^ (self container exposedItems size = self container modelSize
		and:
			[ self container effectiveHeight <= self container height ]) not