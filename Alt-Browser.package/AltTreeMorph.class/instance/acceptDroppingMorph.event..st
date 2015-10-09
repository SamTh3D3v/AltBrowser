drag and drop
acceptDroppingMorph: aMorph event: event
	self model 
		dropElements: aMorph passenger 
		index: ((self container rowIndexContainingPoint: event position) ifNil: [ 0 ]).
	self basicHighlightRowIndexes: #().
	self refresh