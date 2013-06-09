updating
aMCWorkingCopyModified: anEvent
	"Ok, should force a change in look for the relevant object in the trees."

	| packageSet node |
	packageSet := anEvent package.
	self rootItems detect: [ :e | (node := e findPackageSet: packageSet) notNil ] ifNone: [ nil ].
	node notNil
		ifTrue: [ self aNodeToUpdate: node ]