querying
isInRBEnvironment: aRBEnvironment
	^ (super isInRBEnvironment: aRBEnvironment) and: [ aRBEnvironment isSelectorEnvironment not ]