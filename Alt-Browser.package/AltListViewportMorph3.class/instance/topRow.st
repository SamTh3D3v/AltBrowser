as yet unclassified
topRow
	^ exposedItems
		ifNotNil: [ :e | e at: e keys sorted first ]
		ifNil: [  ]