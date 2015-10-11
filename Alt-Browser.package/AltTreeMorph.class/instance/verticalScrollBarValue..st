private-scrollbars
verticalScrollBarValue: aNumber
	model ifNil: [ ^ self ].
	showIndex := self verticalScrollBarValueToRowIndex: aNumber.
	self container changed