querying
isInRBEnvironment: aRBEnvironment
	"Meta nodes are in environments with classes."

	^ aRBEnvironment includesClass: (Smalltalk at: code ifAbsent: [ UndefinedObject ])