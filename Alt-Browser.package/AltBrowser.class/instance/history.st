accessing
history
	history isNil
		ifTrue: [ history := NavigationHistory new ].
	^ history