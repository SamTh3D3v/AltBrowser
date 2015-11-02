tests
testReverseRootStreamAtEnd
	"Test the tree item implementation with hidden root."

	| tree stream |
	tree := #(0 #(1 #(2 #(3 #(4 #(5 #(6))))))) asAltTreeItemRootModel.
	stream := tree asReverseReadStream.
	self assert: tree size = 6.
	stream skip: 1.
	self assert: stream atEnd not.
	stream skip: 4.
	self assert: stream atEnd not.
	self assert: stream next item = 1.
	self assert: stream atEnd.
	self assert: stream next isNil