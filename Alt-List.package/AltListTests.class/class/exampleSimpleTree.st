examples
exampleSimpleTree
	"Create a simple instance of it and display it."

	"AltTreeTests exampleSimpleTree"

	<example>
	| tree morph |
	tree := #(1 #(2 4 5) 3) asAltTree.
	morph := AltListMorph2 new.
	morph model: tree.
	morph openInWindow.
	^ morph