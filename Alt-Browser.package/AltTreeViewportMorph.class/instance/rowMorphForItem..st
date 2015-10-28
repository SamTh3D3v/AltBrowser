private
rowMorphForItem: anItem
	| row morph |
	morph := anItem asTreeItemMorph privateOwner: self.
	maximumWidth := maximumWidth max: morph right + 2.
	row := Morph new
		hResizing: #rigid;
		vResizing: #rigid;
		color: Color transparent;
		bounds:
			(0 @ 0 extent: (self width - 2 max: morph right) @ morph bottom);
		yourself.
	row addMorph: morph.
	^ row