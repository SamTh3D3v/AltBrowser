execution
execute
	| label |
	label := self 
		prompt: 'Type name of scope:' 
		initialAnswer: self environment label.
	(label isNil or: [ label isEmpty ])
		ifTrue: [ ^ self ].
	SavedEnvironments
		add: (self environment
			label: label;
			yourself)