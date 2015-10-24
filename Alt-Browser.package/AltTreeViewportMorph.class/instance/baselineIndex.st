accessing pixel-based
baselineIndex
	"Our baseline (index) to start counting. Ceiling to move towards the next entry."

	^ 1 + (verticalValue * (self owner model size - 1)) ceiling