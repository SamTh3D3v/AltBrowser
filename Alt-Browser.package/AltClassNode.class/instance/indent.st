accessing
indent
	indent isNil
		ifTrue: [ 
			| i |
			(i := self parentNode contents detect: [ :e | e item == self item superclass ] ifNone: [ nil ]) notNil
				ifTrue: [ indent := i indent + 1 ]
				ifFalse: [ indent := 0 ] ].
	^ indent