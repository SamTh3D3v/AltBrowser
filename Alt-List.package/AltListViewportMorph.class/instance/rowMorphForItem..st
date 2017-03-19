private
rowMorphForItem: anItem
	| morph |
	morph := anItem asListItemMorphIn: self.
	maximumWidth := maximumWidth max: morph right + 2.
	^ Morph new
		hResizing: #rigid;
		vResizing: #rigid;
		color: Color transparent;
		bounds: (0 @ 0 extent: (self width - 2 max: morph right) @ morph bottom);
		addMorph: morph;
		privateOwner: self;
		yourself