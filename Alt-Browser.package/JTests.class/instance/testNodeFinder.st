testing
testNodeFinder
	"Test finding a node in the AST."

	| n m |
	m := JExampleArray compiledMethodAt: #rleast:.
	n := JCodeNodeFinder find: 50 in: m.
	self assert: (n source copyFrom: n sourceInterval first to: n sourceInterval last) = 'ml + 1'