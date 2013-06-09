updating
aCategoryRemoved: anEvent
	"Ok, a class category was removed."

	| node r |
	node := self rootItems contents
		detect: [ :e | (r := e findClassCategory: anEvent categorySelector) notNil ] ifNone: [^self].
	r parentNode contents remove: r.
	announcer announce: (AltNodeRemoved node: r)