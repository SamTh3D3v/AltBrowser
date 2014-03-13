updating
aMCWorkingCopyCreated: anEvent
	"Feature needed: when adding a packagewith the same prefix as another, create the appropriate category."

	| node |
	(self rootItems anySatisfy: [ :root | root aMCWorkingCopyCreated: anEvent ])
		ifTrue: [ ^ self ].
	node := AltPackageNode with: anEvent workingCopy packageName asSymbol.
	self rootItems add: node.
	self announcer announce: (AltNodeAdded node: node)