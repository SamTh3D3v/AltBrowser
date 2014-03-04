execution
execute
	"Toggle the node."

	(requestor findMorphNodeForItem: requestor selectedNode)
		ifNotNil: [ :aMorph | 
			aMorph isExpanded
				ifFalse: [ 
					aMorph toggleExpandedState.
					requestor
						requestView: (MorphTreeChangeRequest new action: #adjustSubmorphPositions);
						requestView: (MorphTreeChangeRequest new action: #scrollSelectionIntoView) ] ]