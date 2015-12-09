querying
isInRBEnvironment: aRBEnvironment
	^ aRBEnvironment includesProtocol: self methodCategory in: self parent itemClass