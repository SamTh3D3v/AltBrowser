updating
aNodeToUpdate: r
	"Update the node without rebuilding it. Good for PackageSet which may change its label based on its contents."

	r isNil
		ifTrue: [ ^ self ].
	self announcer
		ifNotNil: [ :a | a announce: (AltNodeUpdated node: r) ]