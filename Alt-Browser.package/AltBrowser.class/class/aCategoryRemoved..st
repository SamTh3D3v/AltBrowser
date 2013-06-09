updating
aCategoryRemoved: anEvent
	"Ok, a class category was removed."

	| node r |
	node := self rootItems
		detect: [ :e | (r := e findClassCategory: anEvent categorySelector) notNil ] ifNone: [^self].
	r parentNode contents remove: r.
	self allInstances do: [ :l | l removeNode: r ]