tests
testItemMorph
	"Create an individual morph."

	| tree morph |
	tree := #(1 #(2 4 5) 3) asAltTree.
	morph := AltTreeItemMorph new.
	self assert: morph bounds origin = (0 @ 0).
	morph item: (tree at: 2).
	self assert: morph left = 20.
	self assert: morph top = 2.
	self assert: morph bottom = 19