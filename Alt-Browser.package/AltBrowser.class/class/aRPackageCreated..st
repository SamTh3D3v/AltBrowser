updating
aRPackageCreated: anEvent
	"Do I need to track that? We are tracking the category creation event and this is redundant. And we can't afford to avoid tracking new packages as well."

	| packageSet packageName cat node item |
	packageSet := anEvent package.
	packageName := packageSet packageName.
	item := anEvent package workingCopy.
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