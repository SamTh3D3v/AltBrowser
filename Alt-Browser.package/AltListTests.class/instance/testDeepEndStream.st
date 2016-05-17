tests
testDeepEndStream
	"Test the tree item implementation."

	| tree stream |
	tree := #(1 2 #(2 4 #(5 6 7))) asAltTree.
	stream := tree asReadStream.
	self assert: tree size = 7.
	stream skip: 6.
	self assert: stream next item = 7.
	self assert: stream position = 7.
	self assert: stream atEnd.
	self assert: stream next isNil