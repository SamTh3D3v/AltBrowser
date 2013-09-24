querying
isInRBEnvironment: aRBEnvironment
	^ (self contents select: [ :e | e isInRBEnvironment: aRBEnvironment ]) notEmpty