querying
isInRBEnvironment: aRBEnvironment
	^ (aRBEnvironment includesClass: self item)
		or: [ self item isMeta not and: [ aRBEnvironment includesClass: self item class ] ]