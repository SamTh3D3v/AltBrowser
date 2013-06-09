updating
aClassRemoved: anEvent
	"Ok, a class was removed."

	| node r |
	node := self rootItems
		detect: [ :e | (r := e findClass: anEvent removedClass) notNil ] ifNone: [^self].
	r parentNode contents remove: r.
	self allInstances do: [ :l | l removeNode: r ]