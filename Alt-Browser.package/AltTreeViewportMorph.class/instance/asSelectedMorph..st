drawing
asSelectedMorph: aMorph
	^ (AltHighlightMorph on: aMorph color: self owner selectionColor)
		privateOwner: self;
		yourself