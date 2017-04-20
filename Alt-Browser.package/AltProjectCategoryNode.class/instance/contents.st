accessing
contents
	self deny: (self item value anySatisfy: [ :a | a isSymbol not ]).
	contents
		ifNil: [ contents := ((self item value select: [ :a | a isSymbol ])
				sorted: [ :a :b | a < b ])
				collect: [ :a | AltProjectNode with: a parent: self ] ].
	^ contents