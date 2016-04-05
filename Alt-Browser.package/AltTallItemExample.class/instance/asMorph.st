user interface
asMorph
	^ super asMorph
		height: self height;
		color: (Color wheel: 12) atRandom;
		highlightForDrop: true;
		yourself