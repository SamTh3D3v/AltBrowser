updating
aClassRemoved: anEvent
	"Ok, a class was removed."

	| node r |
	node := self rootItems contents
		detect: [ :e | (r := e findClass: anEvent removedClass) notNil ] ifNone: [^self].
	r parentNode contents remove: r.
	announcer announce: (AltNodeRemoved node: r)