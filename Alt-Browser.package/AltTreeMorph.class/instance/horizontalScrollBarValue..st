private-scrollbars
horizontalScrollBarValue: aNumber
	model ifNil: [ ^ self ].
	self container changed