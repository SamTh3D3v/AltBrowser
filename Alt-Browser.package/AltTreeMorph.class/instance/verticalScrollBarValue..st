private-scrollbars
verticalScrollBarValue: aNumber
	model ifNil: [ ^ self ].
	showIndex := 1
		+ ((self container maxShowIndex - 1) * aNumber) truncated.
	self container verticalValue: aNumber.
	self container changed