updating
aMCWorkingCopyDeleted: anEvent
	"Ok."

	| package cat node r |
	node := self rootItems
		detect: [ :e | (r := e item value detect: [ :p | p == anEvent workingCopy ] ifNone: [ nil ]) notNil ].
	node item value remove: r.
	self allInstances do: [ :l | l removeNode: (node findPackage: anEvent workingCopy) ].
	node item value isEmpty
		ifTrue: [ 
			self rootItems remove: node.
			self allInstances do: [ :l | l removeNode: node ] ]