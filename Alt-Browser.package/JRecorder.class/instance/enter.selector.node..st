execution graph
enter: object selector: sel node: nid
	"we are going into a method. Add a level."

	| n |
	n := JRecordMethod new object: object shallowCopy selector: sel node: nid.
	self addChild: n.
	stack addLast: n