querying
isInRBEnvironment: aRBEnvironment
	^ aRBEnvironment isSystem or: [ self contents anySatisfy: [ :e | e isInRBEnvironment: aRBEnvironment ] ]