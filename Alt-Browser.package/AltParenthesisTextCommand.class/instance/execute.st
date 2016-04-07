execution
execute
	"Either add the character or put parenthesis around the selection. Remove the parenthesis around the selection if they exist."

	| interval text int |
	interval := target trueSelectionInterval.
	text := target textMorph text.
	interval size = 0
		ifTrue: [ target textMorph simulateKeyStroke: $( ]
		ifFalse:
			[ int := (interval first - 1 max: 1) to: (interval last + 1 min: text size).
			((text at: int first) = $( and: [ (text at: int last) = $) ])
				ifTrue: [ target textMorph
						handleEdit: [ target textMorph selectFrom: int first to: int last.
							target textMorph editor
								addString: (text copyFrom: interval first to: interval last) ] ]
				ifFalse: [ target textMorph
						handleEdit: [ target textMorph editor addString: '(' , target trueSelection , ')' ].
					target textMorph selectFrom: interval first to: interval last + 2 ] ]