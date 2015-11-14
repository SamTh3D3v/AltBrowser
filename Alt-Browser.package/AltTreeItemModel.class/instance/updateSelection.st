selection
updateSelection
	"Get current selection."

	| i announcement |
	i := 0.
	announcement := AltSelectionChanged new.
	self
		anySatisfy:
			[ :e | 
			i := i + 1.
			e selected
				ifTrue:
					[ announcement newItems add: e.
					announcement newIndexes add: i.
					true ]
				ifFalse: [ false ] ].
	^ announcement