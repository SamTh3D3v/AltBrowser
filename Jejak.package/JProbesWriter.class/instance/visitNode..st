visiting
visitNode: aNode
	"When we do a node, we increase the counter so that we may identify it."

	no := no + 1.
	^ aNode acceptVisitor: self