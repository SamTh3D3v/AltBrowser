updating
aMCWorkingCopyDeleted: anEvent
	"Depending on the MCPackage, this may appear as a package category or as a RPackage."

	"Note. Before the removal of the package set (and working copy), all packages have disappeared."
	
	"Note: we will have to remove from the root items only if the MCWorkingCopy was stored at the top level. This is checked by the double call to aMCWorkingCopyDeleted: which will only answer true if node is the AltPackageSetNode for the MCWorkingCopy."

	(self rootItems contents detect: [ :each | each aMCWorkingCopyDeleted: anEvent ] ifNone: [ nil ])
		ifNotNil: [ :node | 
			(node aMCWorkingCopyDeleted: anEvent)
				ifTrue: [ 
					self rootItems remove: node.
					announcer announce: (AltNodeRemoved node: node) ].
			^ true ].
	^ false