accessing
icon
	^ item modified
		ifTrue: [ #dirtyPackageIcon ]
		ifFalse: [ #packageIcon ]