accessing
icon
	^ self itemClass hasComment
		ifTrue: [ nil ]
		ifFalse: [ #uncommentedClassIcon ]