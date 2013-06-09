utilities
selectEnvironments: aString
	| environments |
	environments := OBMultipleChoiceRequest 
		prompt: aString
		labels: (SavedEnvironments collect: [ :each | each label ]) 
		values: SavedEnvironments.
"	(environments isNil or: [ environments isEmpty ])
		ifTrue: [ ORUICancellationError signal ].
"	^ environments