accessing pixel-based
baselineIndex
	"Our baseline (index) to start counting. From index 1 to model size, with only 0.0 on the vertical scale becoming a problematic 0 index."

	^ (verticalValue * self modelSize) ceiling max: 1