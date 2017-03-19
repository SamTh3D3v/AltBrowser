tree accessing
depth
	"Depth in the tree."

	^ parent ifNil: [ -1 ] ifNotNil: [ parent depth + 1 ]