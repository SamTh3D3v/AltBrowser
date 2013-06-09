updating
aClassRemoved: anEvent
	"Ok, a class was removed. TODO: if this class has extensions, it should be removed from more than one place."

	| node r |
	node := self rootItems contents
		detect: [ :e | (r := e findClass: anEvent classRemoved) notNil ] ifNone: [^self].
	r parentNode contents remove: r.
	announcer announce: (AltNodeRemoved node: r)