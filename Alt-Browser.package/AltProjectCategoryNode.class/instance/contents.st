accessing
contents
	self deny: (self item value anySatisfy: [ :a | a isSymbol not ]).
	contents
		ifNil: [ contents := (self item value sorted: [ :a :b | a < b ])
				collect: [ :a | AltProjectNode with: a parent: self ] ].
	^ contents