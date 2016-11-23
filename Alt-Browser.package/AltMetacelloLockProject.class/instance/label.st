accessing
label
	^ requestor selectedNode item projectRegistration locked == true
		ifTrue: [ 'Unlock' ]
		ifFalse: [ 'Lock' ]