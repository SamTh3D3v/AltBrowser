private-scrollbars
hasVerticalScrollBar
	"Do we need a vertical scrollbar?"

	self model ifNil: [ ^ false ].
	self viewport
		in:
			[ :v | 
			v exposedItems ifNil: [ ^ false ].
			^ (v exposedItems size = v modelSize
				and: [ v effectiveHeight <= v height ]) not ]