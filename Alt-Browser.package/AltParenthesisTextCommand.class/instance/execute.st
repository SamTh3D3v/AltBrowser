execution
execute
	"Either add the character or put parenthesis around the selection."

	| interval |
	interval := target trueSelectionInterval.
	interval size = 0
		ifTrue: [ target textMorph simulateKeyStroke: $( ]
		ifFalse: [ target
				handleEdit:
					[ target textMorph editor addString: '(' , target trueSelection , ')' ] ]