querying
isInRBEnvironment: aRBEnvironment
	^ (aRBEnvironment includesClass: self itemClass)
		or: [ aRBEnvironment includesClass: self itemClass class ]