querying
isInRBEnvironment: aRBEnvironment
	"Hide the extensions when we are just looking at a class."

	^ (self contents select: [ :e | e isInRBEnvironment: aRBEnvironment ]) notEmpty
		and: [ aRBEnvironment isClassEnvironment not ]