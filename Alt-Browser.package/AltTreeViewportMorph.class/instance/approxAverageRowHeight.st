accessing pixel-based
approxAverageRowHeight
	"based on what we are displaying now. Or a constant if we haven't displayed anything yet."

	exposedItems ifNil: [ ^ 20 ].
	^ (bottomOffset - topOffset) / exposedItems size asFloat