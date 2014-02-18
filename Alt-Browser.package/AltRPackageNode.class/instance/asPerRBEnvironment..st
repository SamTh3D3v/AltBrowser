querying
asPerRBEnvironment: aRBEnvironment
	"Check if the contents exists in this environment. If yes, return self."

	aRBEnvironment isSystem
		ifTrue: [ ^ self ].
	^ (self contents anySatisfy: [ :e | e isInRBEnvironment: aRBEnvironment ])
		ifTrue: [ self ]
		ifFalse: [ nil ]