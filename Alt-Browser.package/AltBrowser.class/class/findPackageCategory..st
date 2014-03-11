querying
findPackageCategory: aName
	"Search for a package category in the tree."

	self rootItems do: [ :e | (e findPackageCategory: aName) ifNotNil: [ :item | ^ item ] ].
	^ nil