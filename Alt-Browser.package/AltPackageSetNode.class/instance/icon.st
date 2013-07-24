accessing
icon
	^ NautilusIcons
		iconNamed:
			(item modified
				ifTrue: [ #dirtyPackageIcon ]
				ifFalse: [ #packageIcon ])