*alt-browser-rb-commands
textIntervals
	"The text intervals for this node. To be used to show feedback on the node. Should return an array of intervals describing the node."

	^ Array with: (self start to: self stop)