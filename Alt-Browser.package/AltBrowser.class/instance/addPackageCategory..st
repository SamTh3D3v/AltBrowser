updating
addPackageCategory: aNode
	"A new package category has been added. Update the tree by applying it."

	treeModel rootsAdd: (ABTreeNodeModel with: aNode model: aNode)