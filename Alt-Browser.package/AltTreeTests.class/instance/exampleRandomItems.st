examples
exampleRandomItems
	"Create a large array of elements at random."

	"AltTreeTests new exampleRandomItems"

	| tree morph |
	tree := AltRandomItemExample new.
	tree item: 0.
	tree
		contents:
			((1 to: 20000)
				collect:
					[ :e | AltRandomItemExample new item: e * (10 ** (1 to: 10) atRandom) ]).
	morph := AltTreeMorph new.
	morph model: tree.
	morph openInWindow.
	^ morph