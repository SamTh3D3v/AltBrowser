private-scrollbars
horizontalScrollBarValue: aNumber
	model ifNil: [ ^ self ].
	self viewport changed