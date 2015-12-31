querying
isInRBEnvironment: aRBEnvironment
	^ aRBEnvironment includesSelector: self selector in: self sourceClass