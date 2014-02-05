drag and drop
dropItem: anItem
	"Either change a method protocol or copy a method from one class to another."

	anItem sourceClass == self sourceClass
		ifFalse: [ self sourceClass compile: anItem sourceCode classified: self methodCategory notifying: nil ]
		ifTrue: [ 
			| cm |
			cm := anItem compiledMethod.
			cm methodClass organization classify: anItem item under: self methodCategory suppressIfDefault: false ].
	^ self