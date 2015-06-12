tests API
testProtocols
	self assert: (Object protocols allSatisfy: [ :p | p isSymbol ]).
	self assert: (Object organization protocols noneSatisfy: [ :p | p isSymbol ])