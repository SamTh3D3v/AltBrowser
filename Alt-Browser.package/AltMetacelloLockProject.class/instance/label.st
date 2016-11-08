accessing
label
	^ requestor selectedNode item item locked == true
		ifTrue: [ 'Unlock' ]
		ifFalse: [ 'Lock' ]