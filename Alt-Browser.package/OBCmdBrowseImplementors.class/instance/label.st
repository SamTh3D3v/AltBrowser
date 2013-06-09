accessing
label
	^ "(requestor isKindOf: OBFixedButtonPanel)
		ifTrue: [ 'Implementors' ]
		ifFalse: [" 'Implementors...' "]"