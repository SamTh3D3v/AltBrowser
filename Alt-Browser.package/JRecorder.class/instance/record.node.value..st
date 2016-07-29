execution graph
record: aSelector node: n value: v
	"Record a selector with it's source position, to relate to the original source in a browser."

	| r |
	r := JRecordItem new selector: aSelector node: n.
	self addChild: r.
	^v