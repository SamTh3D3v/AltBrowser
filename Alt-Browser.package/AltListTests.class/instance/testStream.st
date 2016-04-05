tests
testStream
	"Test the tree item implementation."

	| tree stream |
	tree := #(1 #(2 4 5) 3) asAltTree.
	stream := tree asReadStream.
	self assert: stream next item = 1.
	self assert: stream next parent == (tree at: 1).
	self assert: stream next item = 4.
	self
		assert:
			(stream
				next;
				next) item = 3.
	self assert: stream atEnd.
	self assert: stream next isNil.
	(tree at: 2) collapse.
	stream := tree asReadStream.
	self
		assert:
			(stream
				next;
				next;
				next) item = 3.
	self assert: stream atEnd