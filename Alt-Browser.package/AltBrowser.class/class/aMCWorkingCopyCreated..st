updating
aMCWorkingCopyCreated: anEvent
	"Only case where we don't use a #findXXX: on the root items."

	"Done for the RPackage change. Need to test."

	"Ok. Refactor this considering we will track correctly the RPackage creation anyway, and that now we just need to get the correct place (or none so add at root level)."

	(self rootItems inject: false into: [ :bool :root | (root aMCWorkingCopyCreated: anEvent) or: [ bool ] ])
		ifFalse: [ 
			| node |
			node := AltRPackageNode with: anEvent workingCopy.
			self rootItems add: node.
			self announcer announce: (AltNodeAdded node: node) ]