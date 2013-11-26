querying
isInRBEnvironment: aRBEnvironment
	"Not right. Maybe only do that if we are in a selector environment?"

	aRBEnvironment isSelectorEnvironment
		ifTrue: [ ^ (self contents select: [ :e | e isInRBEnvironment: aRBEnvironment ]) notEmpty ].
	^ super isInRBEnvironment: aRBEnvironment