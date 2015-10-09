private
verticalScrollBarValueToRowIndex: aNumber
	| startingIndex |
	startingIndex := self model size
		- self container calculateMinVisibleRows + 1.
	^ (startingIndex * aNumber) asInteger