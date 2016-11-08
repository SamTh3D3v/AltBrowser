querying
asPerRBEnvironment: aRBEnvironment
	"Check if the contents exists in this environment. If yes, return self."

	aRBEnvironment isSystem
		ifTrue: [ ^ self ].
	^ nil