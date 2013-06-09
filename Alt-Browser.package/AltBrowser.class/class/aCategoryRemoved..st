updating
aCategoryRemoved: anEvent
	"Ok, a class category was removed. Not sure this works with the RPackages anymore; probably we do have to change that."

	| node r |
	node := self roots
		detect: [ :e | (r := e findClassCategory: anEvent categorySelector) notNil ] ifNone: [^self].
	r parentNode contents remove: r.
	announcer announce: (AltNodeRemoved node: r)