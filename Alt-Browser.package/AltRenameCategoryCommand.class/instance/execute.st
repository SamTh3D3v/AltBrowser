execution
execute
	"Category name checking is done here. It is extracted from Nautilus, but is it correct?"

	| newName item |
	item := requestor selectedNode item item.
	newName := UIManager default request: 'New name of the package' initialAnswer: item name title: 'Rename a package'.
	(newName = item name or: [ newName isNil or: [ newName isEmpty or: [ newName first = $* ] ] ])
		ifTrue: [ ^ self ].
	RPackage organizer renamePackage: item in: newName