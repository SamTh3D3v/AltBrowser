updating
removeNode: aNode
	"A node in the tree has been removed. Update the tree by applying it."

	(self selectedItem notNil and: [self selectedItem item == aNode])
		ifTrue: [ self selectedItem: nil ].
	treeModel rootsRemove: aNode