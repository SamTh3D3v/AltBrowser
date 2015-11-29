examples
exampleSimpleTree2
	"Create a simple instance of it and display it."

	"Triggers both horizontal and vertical scrollbar and shows
	how it gets the horizontal scrollbar wrong."

	"AltTreeTests exampleSimpleTree2"

	<example>
	| tree morph |
	tree := #(1 #(2 4 '56789012345678902367') 3) asAltTree.
	morph := AltTreeMorph new.
	morph model: tree.
	morph openInWindow.
	^ morph