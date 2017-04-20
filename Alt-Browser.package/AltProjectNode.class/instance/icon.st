accessing
icon
	^ (self contents anySatisfy: [ :e | e mcWorkingCopy modified ])
		ifTrue: [ #dirtyPackageIcon ]
		ifFalse: [ #packageIcon ]