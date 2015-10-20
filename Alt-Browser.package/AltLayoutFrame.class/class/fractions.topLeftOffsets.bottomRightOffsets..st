instance creation
fractions: fractions topLeftOffsets: topLeftOffsets bottomRightOffsets: bottomRightOffsets
	^ self new
		topFraction: fractions top offset: topLeftOffsets y;
		leftFraction: fractions left offset: topLeftOffsets x;
		bottomFraction: fractions bottom offset: bottomRightOffsets y;
		rightFraction: fractions right offset: bottomRightOffsets x