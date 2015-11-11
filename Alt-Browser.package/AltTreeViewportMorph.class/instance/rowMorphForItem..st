private
rowMorphForItem: anItem
	| morph |
	morph := anItem asTreeItemMorph.
	maximumWidth := maximumWidth max: morph right + 2.
	morph top: morph top + 1.
	^ Morph new
		hResizing: #rigid;
		vResizing: #rigid;
		color: Color transparent;
		bounds: (0 @ 0 extent: (self width - 2 max: morph right) @ (morph bottom + 2));
		addMorph: morph;
		privateOwner: self;
		yourself