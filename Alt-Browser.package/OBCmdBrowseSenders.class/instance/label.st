accessing
label
	^" (requestor isKindOf: OBFixedButtonPanel)
		ifTrue: [ 'Senders' ]
		ifFalse: [" 'Senders...' "]"