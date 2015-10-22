accessing pixel-based
averageRowHeight
	"Complete if we have the data. Includes the inter-row space."

	"without the inter-row space: "

	"(maXHeight - (self owner model size * 2.0)) / self owner model size"

	maxHeight asFloat / self owner model size