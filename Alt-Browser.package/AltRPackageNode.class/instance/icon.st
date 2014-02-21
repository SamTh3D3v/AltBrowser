accessing
icon
	^ self mcWorkingCopy modified
		ifTrue: [ #dirtyPackageIcon ]
		ifFalse: [ #packageIcon ]