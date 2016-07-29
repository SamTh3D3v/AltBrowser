execution graph
exit: aValue node: aNodeId
	"going out of a level, with a returned value. If we have a node id, then we know if  we need to pop more."

	[ stack removeLast node == aNodeId ] whileFalse: [  ].
	^ aValue