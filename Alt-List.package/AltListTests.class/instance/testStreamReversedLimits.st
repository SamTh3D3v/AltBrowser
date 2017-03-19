tests
testStreamReversedLimits
	"Reversing a stream at various points."

	| tree stream rstream |
	tree := #(1 #(2 4 5) 3) asAltTree.
	stream := tree asReadStream.
	rstream := stream reversed.
	self assert: rstream atEnd.
	stream skip: 5.
	self assert: stream atEnd.
	rstream := stream reversed.
	#(3 5 4 2 1) do: [ :i | self assert: rstream next item = i ].
	self assert: rstream atEnd