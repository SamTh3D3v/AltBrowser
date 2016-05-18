tests
testStreamReversed
	"Test the tree item implementation."

	| tree stream rstream |
	tree := #(1 #(2 4 5) 3) asAltTree.
	stream := tree asReadStream.
	self assert: stream next item = 1.
	self assert: stream position = 1.
	self assert: stream next parent == (tree at: 1).
	self assert: stream next item = 4.
	rstream := stream reversed.
	self
		assert:
			(stream
				next;
				next) item = 3.
	self assert: stream atEnd.
	self assert: stream next isNil.
	self assert: rstream next item = 4.
	self assert: rstream position = 3.
	self
		assert:
			(rstream
				next;
				next) item = 1.
	self assert: rstream atEnd