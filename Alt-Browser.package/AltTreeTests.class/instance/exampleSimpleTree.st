examples
exampleSimpleTree
	"Create a simple instance of it and display it."
	
	"AltTreeTests new exampleSimpleTree"

	| tree morph |
	tree := #(1 #(2 4 5) 3) asAltTreeItemModel.
	morph := AltTreeMorph new.
	morph model: tree.
	morph openInWindow.
	^ morph