execution
execute
	"Either add the character or put parenthesis around the selection."

	| interval |
	interval := target trueSelectionInterval.
	interval size = 0
		ifTrue: [ target textMorph editor addString: '('.
			target textMorph editor selectAt: interval first + 1.
			target selectionInterval: target textMorph editor selectionInterval ]
		ifFalse: [ target
				handleEdit:
					[ target textMorph editor addString: '(' , target trueSelection , ')' ] ]