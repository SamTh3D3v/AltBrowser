private-scrollbars
verticalScrollBarValue: aNumber
	model ifNil: [ ^ self ].
	showIndex := (self container maxShowIndex * aNumber) asInteger.
	self container changed