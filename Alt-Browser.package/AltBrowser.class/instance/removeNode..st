updating
removeNode: aNodeRemoved
	"Announcement : A node in the tree has been removed. Update the tree."

	| aNode |
	aNode := aNodeRemoved node.
	(self selectedItem notNil and: [self selectedItem item == aNode])
		ifTrue: [ self selectedItem: nil ].
	treeModel rootsRemove: aNode