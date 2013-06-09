updating
aMCWorkingCopyCreated: anEvent
	"Only case where we don't use a #findXXX: on the root items."
	
	"TODO: change to take in account the RPackage change."

	| package cat node |
	package := RPackageOrganizer default packageNamed: anEvent workingCopy packageName.
	cat := package name copyUpTo: $-.
	node := self rootItems contents detect: [ :e | e item key = cat ] ifNone: [ nil ].
	node notNil
		ifTrue: [ 
			node item value
				detect: [ :e | e == package ]
				ifNone: [ 
					| packageNode |
					node item value add: package.
					packageNode :=  node addChild: package.
					packageNode
						ifNotNil: [ announcer announce: (AltNodeAdded node: packageNode) ] ] ]
		ifFalse: [ 
			node := ABPackageCategoryNode with: cat -> (OrderedCollection with: package).
			self rootItems contents add: node.
			 announcer announce: (AltNodeAdded node: node)  ]