private-scrollbars
verticalScrollBarValue: aNumber
	model ifNil: [ ^ self ].
	self viewport changed