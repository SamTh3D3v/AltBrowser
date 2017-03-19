tests
testReversedStream
	"Test the tree item implementation."

	| tree stream |
	tree := #(1 #(2 4 5) 3) asAltTree.
	stream := tree asReverseReadStream.
	self assert: stream next item = 3.
	self assert: stream position = 5.
	self assert: stream next parent == (tree at: 2).
	self assert: stream next item = 4.
	self assert: stream position = 3.
	self
		assert:
			(stream
				next;
				next) item = 1.
	self assert: stream atEnd.
	self assert: stream next isNil.
	(tree at: 2) collapse.
	stream := tree asReverseReadStream.
	self
		assert:
			(stream
				next;
				next;
				next) item = 1.
	self assert: stream atEnd