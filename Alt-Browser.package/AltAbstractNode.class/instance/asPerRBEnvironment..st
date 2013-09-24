querying
asPerRBEnvironment: aRBEnvironment
	"Check if it exists in this environment. If yes, return self or a transform of self (a child, for example); if no return nil causing the node to disappear."

	^ (self isInRBEnvironment: aRBEnvironment)
		ifTrue: [ self ]
		ifFalse: [ nil ]