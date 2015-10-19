updating
update: symbol
	symbol == #refresh
		ifTrue: [ ^ self refresh ].
	(symbol isKindOf: Association)
		ifTrue: [  ].	"Change selection to take in account"
	^ super update: symbol