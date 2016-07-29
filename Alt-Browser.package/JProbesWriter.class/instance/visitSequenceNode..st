visiting
visitSequenceNode: aSequenceNode
	aSequenceNode temporaries: (self visitArgumentNodes: aSequenceNode temporaries).
	aSequenceNode statements: (aSequenceNode statements collect: [ :each | self visitNode: each ]).
	^ aSequenceNode