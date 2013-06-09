updating
removeNode: aNodeRemoved
	"Announcement : A node in the tree has been removed. Update the tree."

	| aNode |
	aNode := aNodeRemoved node.
		aNode isNil ifTrue: [^ self].
	treeModel rootsRemove: aNode