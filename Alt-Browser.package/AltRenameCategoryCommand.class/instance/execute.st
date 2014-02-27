execution
execute
	"Category name checking is done here. It is extracted from Nautilus, but is it correct?"

	| newName systemCategory |
	systemCategory := requestor selectedNode item categoryName.
	newName := UIManager default
		request: 'New name of the category'
		initialAnswer: systemCategory name
		title: 'Rename a category'.
	(newName = systemCategory name or: [ newName isNil or: [ newName isEmpty or: [ newName first = $* ] ] ])
		ifTrue: [ ^ self ].
	self class environment organization renameCategory: systemCategory name toBe: newName