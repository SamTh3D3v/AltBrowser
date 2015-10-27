as yet unclassified
asMorph
	^ super asMorph
		height: 200 atRandom;
		color: (Color wheel: 12) atRandom;
		highlightForDrop: true;
		yourself