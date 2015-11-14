as yet unclassified
asMorph
	^ super asMorph
		font:
			(LogicalFont
				familyName: 'Source Sans Pro'
				pointSize: (10 + 50 atRandom) rounded);
		color: (Color wheel: 12) atRandom;
		highlightForDrop: true;
		yourself