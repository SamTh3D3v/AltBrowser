private-scrollbars
horizontalScrollBarValue: aNumber
	model ifNil: [ ^ self ].
	self container
		leftOffset:
			(self container offsetWidth - self container width) * aNumber.
	self container changed