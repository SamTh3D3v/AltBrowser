visiting
visitLiteralArrayNode: aRBLiteralArrayNode
	^ aRBLiteralArrayNode contents: (aRBLiteralArrayNode contents collect: [ :each | self visitNode: each ])