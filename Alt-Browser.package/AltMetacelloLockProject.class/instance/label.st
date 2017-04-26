accessing
label
	^ (self getItem projectRegistration
		ifNil: [ 'Lock/Unlock ' ]
		ifNotNil: [ :pr | 
			pr locked == true
				ifTrue: [ 'Unlock ' ]
				ifFalse: [ 'Lock ' ] ]) , self getItem projectName