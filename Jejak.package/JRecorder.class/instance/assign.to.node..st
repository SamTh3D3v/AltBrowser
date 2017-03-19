execution graph
assign: aValue to: aVar node: n 
	self addChild: (JRecordAssignment new 
				var: aVar
				node: n
				value: aValue shallowCopy).
	^aValue