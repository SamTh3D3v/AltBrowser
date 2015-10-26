tests
testReversedStreamRoot
	"Test the tree root item implementation (0 indexed root or hidden root)."

	| tree stream |
	tree := #(1 #(2 4 5) 3) asAltTreeItemRootModel.
	stream := AltTreeReverseReadStream on: tree.
	self assert: stream next item = 3.
	self assert: stream next parent == (tree at: 1).
	self assert: stream next item = 4.
	self assert: stream next item = 2.
	self assert: stream atEnd.
	self assert: stream next isNil.
	(tree at: 1) isExpanded: false.
	stream := AltTreeReverseReadStream on: tree.
	self
		assert:
			(stream
				next;
				next) item = 2.
	self assert: stream atEnd