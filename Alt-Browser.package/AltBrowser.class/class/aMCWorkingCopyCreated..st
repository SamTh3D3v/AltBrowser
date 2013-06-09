updating
aMCWorkingCopyCreated: anEvent
	"Only case where we don't use a #findXXX: on the root items."

	"Done for the RPackage change. Need to test."
	
	"Test failed. Have to change it."

	| packageSet packageName cat node item |
	packageSet := anEvent workingCopy packageSet.
	packageName := packageSet packageName.
	item := anEvent workingCopy.
	cat := packageName copyUpTo: $-.
	node := self rootItems detect: [ :e | (e isKindOf: AltPackageCategoryNode) and: [ e item key = cat ] ] ifNone: [ nil ].
	node notNil
		ifTrue: [ 
			| packageNode |
			node item value add: item.
			packageNode := node addChild: item.
			announcer announce: (AltNodeAdded node: packageNode) ]
		ifFalse: [ 
			node := AltPackageSetNode with: item.
			self rootItems add: node.
			announcer announce: (AltNodeAdded node: node) ]