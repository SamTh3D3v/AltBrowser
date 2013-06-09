updating
aMCWorkingCopyDeleted: anEvent
	"Uncool: we need a MCWorkingCopy, and the event gives us a MCPackage :-(."

	| package cat node r |
	node := self rootItems
		detect: [ :e | (r := e item value detect: [ :p | p package == anEvent package ] ifNone: [ nil ]) notNil ].
	node item value remove: r.
	self allInstances do: [ :l | l removePackage: r ].
	node item value isEmpty
		ifTrue: [ 
			self rootItems remove: node.
			self allInstances do: [ :l | l removePackageCategory: node ] ]