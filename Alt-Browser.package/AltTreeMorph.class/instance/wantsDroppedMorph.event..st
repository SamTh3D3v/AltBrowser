drag and drop
wantsDroppedMorph: aMorph event: event
	^ self model 
		wantsDropElements: aMorph passenger
		type: aMorph dragTransferType
		index: ((self container rowIndexContainingPoint: event position) ifNil: [ 0 ])