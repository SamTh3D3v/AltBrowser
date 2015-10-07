tree accessing
depth
	"Depth in the tree."

	^ parent ifNil: [ 0 ] ifNotNil: [ parent depth + 1 ]