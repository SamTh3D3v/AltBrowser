accessing
indent
	indent isNil
		ifTrue: [ 
			| i |
			indent := (i := self parentNode contents detect: [ :e | e item == self item superclass ] ifNone: [ nil ]) notNil
				ifTrue: [ i indent + 1 ]
				ifFalse: [ 0 ] ].
	^ indent