user actions
doubleClick
	"Double click expand or unexpand the items, or ask the item for the relevant action. Refactor to delegate at one point, not forgetting the context."

	"adjustSubmorphPositions shows that the MorphTreeMorph API isn't correct."

	self selectedNode notNil
		ifTrue: [ self selectedNode doubleClickIn: self ]