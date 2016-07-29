initialize-release
initialize
	stack := OrderedCollection new.
	stack add: (JRecordItem new selector: #root node: 0)