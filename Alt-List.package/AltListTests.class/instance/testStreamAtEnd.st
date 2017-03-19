tests
testStreamAtEnd
	"Test the tree item implementation."

	| tree stream |
	tree := #(1 #(2 #(3 #(4 #(5 #(6)))))) asAltTree.
	stream := tree asReadStream.
	self assert: tree size = 6.
	stream skip: 1.
	self assert: stream atEnd not.
	stream skip: 4.
	self assert: stream atEnd not.	
	self assert: stream next item = 6.
	self assert: stream atEnd.
	self assert: stream next isNil