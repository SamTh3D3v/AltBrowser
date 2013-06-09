updating
aMCWorkingCopyCreated: anEvent
	"Only case where we don't use a #findXXX: on the root items."

	"Done for the RPackage change. Need to test."

	| packageSet packageName cat node item |
	packageSet := anEvent workingCopy packageSet.
	packageName := packageSet packageName.
	item := packageSet packages size = 1
		ifTrue: [ packageSet packages first ]
		ifFalse: [ packageName -> packageSet packages asOrderedCollection ].
	cat := packageName copyUpTo: $-.
	node := self roots detect: [ :e | (e isKindOf: ABPackageCategoryNode) and: [ e item key = cat ] ] ifNone: [ nil ].
	node notNil
		ifTrue: [ 
			| packageNode |
			node item value add: item.
			packageNode := node addChild: item.
			announcer announce: (AltNodeAdded node: packageNode) ]
		ifFalse: [ 
			node := packageSet packages size = 1
				ifTrue: [ ABPackageNode with: item ]
				ifFalse: [ ABPackageCategoryNode with: item ].
			self roots add: node.
			announcer announce: (AltNodeAdded node: node) ]