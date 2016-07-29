execution graph
enter: object selector: sel node: nid
	"we are going into a method. Add a level."

	| n |
	n := JRecordMethod new 
				object: object copy
				selector: sel
				node: nid.
	self current addChild: n.
	stack addLast: n.
	self context: nid.