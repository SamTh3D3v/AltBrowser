callbacks
selection
	^ selection ifNil: 
		[ 1 to: (source isNil 
				ifTrue: [ self text size ]
				ifFalse: [ 0 ]) ]