*Alt-Browser-Commands-Refactoring
textIntervals
	"The text intervals for this node. To be used to show feedback on the node. Should return an array of intervals describing the node."

	^ selectorParts collect: [:e | e start to: e stop ]