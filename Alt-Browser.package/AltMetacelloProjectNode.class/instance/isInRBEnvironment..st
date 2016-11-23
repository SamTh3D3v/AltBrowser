querying
isInRBEnvironment: aRBEnvironment
	^ self contents anySatisfy: [ :e | e isInRBEnvironment: aRBEnvironment ]