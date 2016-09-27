execution
execute
	"Category name checking is done here. It is extracted from Nautilus, but is it correct?"

	| newName systemCategory |
	systemCategory := requestor selectedNode item rpackage.
	newName := UIManager default
		request: 'New name of the package'
		initialAnswer: systemCategory categoryName
		title: 'Rename a category'.
	(newName = systemCategory categoryName
		or: [ newName isNil or: [ newName isEmpty or: [ newName first = $* ] ] ])
		ifTrue: [ ^ self inform: 'Incorrect package name' ].
	systemCategory renameTo: newName