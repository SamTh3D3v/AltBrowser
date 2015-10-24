private-scrollbars
verticalScrollBarValue: aNumber
	model ifNil: [ ^ self ].
	self container verticalValue: aNumber.
	self container changed