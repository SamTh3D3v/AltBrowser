visiting
visitArgumentNode: aNode
	"Check if we have the right node. If yes, return it. If not, continue the search."

	^ target == no
		ifTrue: [ 
			JCodeNodeFound new
				tag: aNode;
				signal ]
		ifFalse: [ 
			no := no + 1.
			aNode acceptVisitor: self ]