accessing
indent
	indent isNil
		ifTrue: [ 
			| i |
			indent := (i := self parent contents
				detect: [ :e | (e isKindOf: AltClassNode) and: [ e itemClass == self superclass ] ]
				ifNone: [ nil ]) notNil
				ifTrue: [ i indent + 1 ]
				ifFalse: [ 0 ] ].
	^ indent