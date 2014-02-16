accessing
icon
	^ self item hasComment
		ifTrue: [ nil ]
		ifFalse: [ #uncommentedClass ]