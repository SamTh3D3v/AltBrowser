user actions
doubleClick
	"Double click expand or unexpand the items."

	"adjustSubmorphPositions shows that MorphTreeMorph API isn't correct."

	self selectedNode notNil
		ifTrue: [ 
			(self findMorphNodeForItem: self selectedNode) toggleExpandedState.
			treeMorph adjustSubmorphPositions ]