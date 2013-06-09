updating
aMCWorkingCopyCreated: anEvent
	"Uncool: we need a MCWorkingCopy, and the event gives us a MCPackage :-(."

	| package cat node |
	package := MCWorkingCopy allManagers detect: [ :e | e package == anEvent package ].
	cat := package packageName copyUpTo: $-.
	node := self rootItems detect: [ :e | e item key = cat ] ifNone: [ nil ].
	node notNil
		ifTrue: [ node item value detect: [ :e | e == package ] ifNone: [ node item value add: package ] ]
		ifFalse: [ 
			node := ABPackageCategoryNode with: cat -> (OrderedCollection with: package).
			self rootItems add: node.
			self allInstances do: [ :l | l addPackageCategory: node ] ]