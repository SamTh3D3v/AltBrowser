tests
testItemMorph
	"Create an individual morph."

	| tree morph |
	tree := #(1 #(2 4 5) 3) asAltTreeItemModel.
	morph := AltTreeItemMorph new.
	self assert: morph bounds origin = (0@0).
	morph item: (tree at: 2).