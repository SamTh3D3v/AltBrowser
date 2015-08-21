private
selectorsIn: aREString from: aClass upTo: topClass
	"A way to find selectors according to a specific protocol"

	| c s |
	c := aClass.
	s := IdentitySet new.
	[ c = topClass superclass ]
		whileFalse: [ 
			c protocols
				do: [ :p | 
					(p matchesRegex: aREString)
						ifTrue: [ s addAll: (c selectorsInProtocol: p) ] ].
			c := c superclass ].
	^ s