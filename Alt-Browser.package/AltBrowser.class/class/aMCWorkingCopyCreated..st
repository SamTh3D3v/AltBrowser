updating
aMCWorkingCopyCreated: anEvent
	"Only case where we don't use a #findXXX: on the root items."
	
	"TODO: change to take in account the RPackage change."

	| package cat node |
	package := anEvent workingCopy.
	cat := package packageName copyUpTo: $-.
	node := self rootItems detect: [ :e | e item key = cat ] ifNone: [ nil ].
	node notNil
		ifTrue: [ 
			node item value
				detect: [ :e | e == package ]
				ifNone: [ 
					| packageNode |
					node item value add: package.
					packageNode :=  node addChild: package.
					packageNode ifNotNil: [self allInstances do: [ :l | l addNode: packageNode ] ] ] ]
		ifFalse: [ 
			node := ABPackageCategoryNode with: cat -> (OrderedCollection with: package).
			self rootItems add: node.
			self allInstances do: [ :l | l addPackageCategory: node ] ]