execution graph
return: aValue node: n
	self addChild: (JRecordAssignment new var: 'return' node: n value: aValue shallowCopy).
	[ stack removeLast isMethod ] whileFalse: [  ].
	^ aValue