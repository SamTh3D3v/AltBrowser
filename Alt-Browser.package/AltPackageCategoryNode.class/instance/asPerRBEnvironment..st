querying
asPerRBEnvironment: aRBEnvironment
	"Check if it exists in this environment. If yes, return self or a transform of self (a child, for example); if no return nil causing the node to disappear."

	| sz |
	aRBEnvironment isSystem
		ifTrue: [ ^ super asPerRBEnvironment: aRBEnvironment ].
	sz := (self contents select: [ :e | e isInRBEnvironment: aRBEnvironment ]) size.
	^ sz = 1
		ifTrue: [ self contents first asPerRBEnvironment: aRBEnvironment ]
		ifFalse: [ 
			sz = 0
				ifTrue: [ nil ]
				ifFalse: [ self ] ]