querying
findPackage: aName
	"Search for a package in the tree."

	self rootItems do: [ :e | (e findPackage: aName) ifNotNil: [ :item | ^ item ] ].
	^ nil