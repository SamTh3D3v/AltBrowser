accessing
contents
	contents
		ifNil: [ contents := (self item value sorted: [ :a :b | a < b ])
				collect: [ :a | AltProjectNode with: a -> OrderedCollection new parent: self ] ].
	^ contents