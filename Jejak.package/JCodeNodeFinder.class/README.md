CodeNodeFinder search through a parse tree to find a given node with a target number (numbering scheme based on a depth-first traversal of the parse tree). Follows the numbering scheme implemented in CodeAnalyserWriter. Returns the node found and the path to it.

Instance Variables:
	no	<SmallInteger>	the current node number
	stack	<OrderedCollection of ProgramNode>	The path in the trace tree: last element is the current node
	target	<SmallInteger>	the target node number
