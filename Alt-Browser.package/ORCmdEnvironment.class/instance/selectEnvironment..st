utilities
selectEnvironment: aString
	| environment |
	environment := OBChoiceRequest 
		prompt: aString
		labels: (SavedEnvironments collect: [ :each | each label ]) 
		values: SavedEnvironments.
"	environment isNil
		ifTrue: [ ORUICancellationError signal ].
"	^ environment