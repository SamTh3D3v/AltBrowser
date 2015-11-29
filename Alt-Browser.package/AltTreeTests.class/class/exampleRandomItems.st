examples
exampleRandomItems
	"Create a large array of elements at random."

	"AltTreeTests exampleRandomItems"

	"Notes on that one:
	- Performance analysis on an instance of that example:
		[ self refresh. self fullDrawOn: Display getCanvas ] timeProfile
	- Drawing large fonts is extremely slow in LCD mode for freetype:
		422ms, 331ms in the display, 87ms refreshing the items.
	- Drawing in CRT mode for freetype is a lot faster, but ugly on small glyphs:
		166ms, 110ms refreshing the items, 46ms in the display.
	Would an optimisation on no subpixel for large fonts correct that?"

	<example>
	| tree morph |
	tree := AltRandomItemExample new.
	tree item: 0.
	tree
		contents:
			((1 to: 20000)
				collect:
					[ :e | AltRandomItemExample new parent: tree; item: e * (10 ** (1 to: 10) atRandom) ]).
	tree expand.
	morph := AltTreeMorph new.
	morph model: tree.
	morph extent: 300 @ 1000.
	morph openInWindow.
	^ morph