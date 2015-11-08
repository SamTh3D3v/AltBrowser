drag and drop
acceptDroppingMorph: aMorph event: event
	self model
		dropElement: aMorph passenger
		index: ((self viewport rowIndexContainingPoint: event position) ifNil: [ 0 ]).
	dropIndex := nil.
	self refresh