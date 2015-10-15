private-scrollbars
verticalScrollBarValue: aNumber
	| startingIndex |
	model ifNil: [ ^ self ].
	startingIndex := self model size
		- self container calculateMinVisibleRows + 1.
	showIndex := (startingIndex * aNumber) asInteger.
	self container changed