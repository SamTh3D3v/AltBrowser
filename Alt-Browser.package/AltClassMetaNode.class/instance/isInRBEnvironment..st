querying
isInRBEnvironment: aRBEnvironment
	"Meta nodes are in environments with classes."

	^ aRBEnvironment includesClass: self itemClass