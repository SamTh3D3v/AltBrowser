tests
testTreeIndexOf
	"Test the tree item implementation."

	| tree |
	tree := #(1 #(2 4 5) 3) asAltTreeItemModel.
	self assert: (tree at: 1) item = 1.
	self assert: (tree indexOf: (tree at: 2)) = 2.
	self assert: (tree indexOf: (tree at: 4)) = 4