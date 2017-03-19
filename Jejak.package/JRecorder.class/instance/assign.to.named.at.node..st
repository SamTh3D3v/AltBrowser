execution graph
assign: aValue to: aVar named: aName at: anIndex node: n
	self addChild: (JRecordAssignment new 
				var: aName , '[' , anIndex printString , ']'
				node: n
				value: aValue shallowCopy).
	^aVar at: anIndex put: aValue