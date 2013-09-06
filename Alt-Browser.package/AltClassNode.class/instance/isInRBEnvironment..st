querying
isInRBEnvironment: aRBEnvironment
	^ (self item isMeta
		ifFalse: [ aRBEnvironment includesClass: self item class ]
		ifTrue: [ true ]) or: [ aRBEnvironment includesClass: self item ]