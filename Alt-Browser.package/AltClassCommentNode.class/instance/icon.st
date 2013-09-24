accessing
icon
	^ self item hasComment
		ifTrue: [ nil ]
		ifFalse: [ NautilusIcons iconNamed: #uncommentedClass ]