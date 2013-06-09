updating
aMCWorkingCopyCreated: anEvent
	"Only case where we don't use a #findXXX: on the root items."

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
					packageNode := node childNodeFromItem: package.
					node contentsNotNil
						ifTrue: [ node contents add: packageNode ].
					self allInstances do: [ :l | l addNode: packageNode ] ] ]
		ifFalse: [ 
			node := ABPackageCategoryNode with: cat -> (OrderedCollection with: package).
			self rootItems add: node.
			self allInstances do: [ :l | l addPackageCategory: node ] ]