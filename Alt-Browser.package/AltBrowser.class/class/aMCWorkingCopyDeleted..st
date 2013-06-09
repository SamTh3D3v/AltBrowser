updating
aMCWorkingCopyDeleted: anEvent
	"Ok. Now, empty package categories are not removed automagically."

	| package cat node r |
	node := self rootItems
		detect: [ :e | (r := e findPackage: anEvent workingCopy) notNil ].
	r parentNode removeChildItem: r.
	self allInstances do: [ :l | l removeNode: r ]