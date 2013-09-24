accessing
icon
	^ self item hasComment
		ifTrue: [ nil ]
		ifFalse: [ Smalltalk ui icons uncommentedClassIcon ]