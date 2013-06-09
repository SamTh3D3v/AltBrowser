execution
execute
	| newName item |
	item := requestor selectedNode item.
	newName := UIManager default request: 'New name of the package' initialAnswer: item name title: 'Rename a package'.
	newName = item name
		ifTrue: [ ^ self ].
	RPackageOrganizer default renamePackage: item in: newName