private-scrollbars
verticalScrollBarValue: aNumber
	model ifNil: [ ^ self ].
	self container changed