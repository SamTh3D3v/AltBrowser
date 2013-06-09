updating
aCategoryRemoved: anEvent
	"Ok, a class category was removed. What has this become with RPackage ?"

	| node r |
	node := self rootItems
		detect: [ :e | (r := e findClassCategory: anEvent categoryName) notNil ] ifNone: [^self].
	r parentNode contents remove: r.
	announcer announce: (AltNodeRemoved node: r)