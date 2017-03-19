visiting
visitPatternWrapperBlockNode: aRBPatternWrapperBlockNode
	aRBPatternWrapperBlockNode wrappedNode: (self visitNode: aRBPatternWrapperBlockNode wrappedNode).
	aRBPatternWrapperBlockNode arguments: (self visitArgumentNodes: aRBPatternWrapperBlockNode arguments).
	aRBPatternWrapperBlockNode body: (self visitNode: aRBPatternWrapperBlockNode body).
	^ aRBPatternWrapperBlockNode