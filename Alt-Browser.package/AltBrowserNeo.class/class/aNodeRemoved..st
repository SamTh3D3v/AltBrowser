updating
aNodeRemoved: r
	"Usually a change to the root nodes. Node additions at the lower level are better handled by rebuilding."

	self announcer
		ifNotNil: [ :a | a announce: (AltNodeRemoved node: r) ]