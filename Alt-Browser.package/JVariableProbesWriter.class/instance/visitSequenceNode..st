visiting
visitSequenceNode: aNode
	| tps2 nodeId stats |
	nodeId := no.
	tps2 := aNode temporaries collect: [ :e | self visitNode: e ].
	stats := aNode statements collect: [ :s | self visitNode: s ].
	tps2 isEmpty
		ifFalse: [ 
			stats
				addFirst:
					(RBMessageNode
						receiver: (RBLiteralValueNode value: #JCollecteur)
						selector: #define:node:
						arguments:
							{(RBLiteralValueNode value: (tps2 collect: [ :a | a name ]) asArray printString).
							(RBLiteralValueNode value: nodeId)}) ].
	aNode statements: stats.
	aNode temporaries: tps2.
	^ aNode