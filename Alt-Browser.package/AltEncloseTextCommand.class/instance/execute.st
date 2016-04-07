execution
execute
	"Either add the character or put parenthesis around the selection. Remove the parenthesis around the selection if they exist."

	| interval text int aTextMorph |
	interval := target trueSelectionInterval.
	aTextMorph := target textMorph.
	text := aTextMorph text.
	aTextMorph
		handleEdit: [ interval size = 0
				ifTrue: [ aTextMorph simulateKeyStroke: self openingChar ]
				ifFalse:
					[ int := (interval first - 1 max: 1) to: (interval last + 1 min: text size).
					((text at: int first) = self openingChar
						and: [ (text at: int last) = self closingChar ])
						ifTrue: [ aTextMorph selectFrom: int first to: int last.
							aTextMorph
								replaceSelectionWith: (text copyFrom: interval first to: interval last) ]
						ifFalse: [ aTextMorph
								replaceSelectionWith:
									(String with: self openingChar) , target trueSelection
										, (String with: self closingChar) ] ] ].
	(aTextMorph respondsTo: #editView)
		ifTrue: [ aTextMorph editView
				selectionInterval: aTextMorph editor selectionInterval ]