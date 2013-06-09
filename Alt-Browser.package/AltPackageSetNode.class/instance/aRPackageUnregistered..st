updating
aRPackageUnregistered: anEvent
	"How do we check for ownership? It may already be out of the package set for all we know."

	self contents detect: [ :e | e aRpackageUnregistered: anEvent ] ifNone: [ ^ false ].
	AltBrowser aNodeToRebuilt: self.
	^ true