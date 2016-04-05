examples
exampleTallItems
	"Create an array of tall elements at random."

	"Notes on that one:
		Since scrolling is logical in an AltTree, there is a distortion when the row
		are tall, with a specific issue when the row is taller than the view. The
		approach would be to have a kind of translation from pixel scrolling into
		logical (rows) scrolling which depends of the row height."

	<example>
	| tree morph |
	tree := AltTallItemExample new.
	tree item: 0.
	tree
		contents:
			((1 to: 100)
				collect:
					[ :e | AltTallItemExample new parent: tree; item: e * (10 ** (1 to: 10) atRandom) ]).
	tree expand.
	morph := AltListMorph3 new.
	morph model: tree.
	morph extent: 300 @ 200.
	morph openInWindow.
	^ morph