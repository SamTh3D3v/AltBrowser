visiting
visitPatternBlockNode: aRBPatternBlockNode
	aRBPatternBlockNode arguments: (self visitArgumentNodes: aRBPatternBlockNode arguments).
	aRBPatternBlockNode body: (self visitNode: aRBPatternBlockNode body).
	^ aRBPatternBlockNode