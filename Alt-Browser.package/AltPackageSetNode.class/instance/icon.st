accessing
icon
	^ Smalltalk ui icons perform:
		(item modified
				ifTrue: [ #dirtyPackageIcon ]
				ifFalse: [ #packageIcon ])