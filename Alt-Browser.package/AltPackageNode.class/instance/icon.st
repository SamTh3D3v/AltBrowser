accessing
icon
	^ self isModified
		ifTrue: [ #dirtyPackageIcon ]
		ifFalse: [ #packageIcon ]