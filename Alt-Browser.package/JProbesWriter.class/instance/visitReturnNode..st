visiting
visitReturnNode: aReturnNode
	| v |
	v := self visitNode: aReturnNode value.
	aReturnNode value == v
		ifFalse: [ aReturnNode value: v ].
	^ aReturnNode