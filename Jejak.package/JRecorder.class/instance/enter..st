execution graph
enter: nid
	"we are going into a loop or into an ifTrue: or ifFalse:"

	| n |
	n := JRecordBlock new 
				node: nid.
	self addChild: n.
	stack addLast: n