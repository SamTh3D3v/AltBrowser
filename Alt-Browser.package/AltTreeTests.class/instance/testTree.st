tests
testTree
	"Test the tree item implementation."

	| tree |
	tree := #(1 #(2 4 5) 3) asAltTree.
	self assert: (tree at: 1) item = 1.
	self assert: (tree at: 2) parent == (tree at: 1).
	self assert: (tree at: 3) item = 4.
	self assert: (tree at: 2) hasContents.
	self assert: tree size = 5.
	self assert: (tree copyFrom: 2 to: 4) first item = 2.
	self assert: (tree copyFrom: 2 to: 5) last item = 3.
	self should: [ tree at: 0 ] raise: SubscriptOutOfBounds.
	self should: [ tree at: tree size + 1 ] raise: SubscriptOutOfBounds.
	(tree at: 2) collapse.
	self assert: tree size = 3.
	self assert: (tree at: 3) item = 3