execution
execute
	"Category name checking is done here. It is extracted from Nautilus, but is it correct?"

	| newName item |
	item := requestor selectedNode item item.
	newName := UIManager default request: 'New name of the category' initialAnswer: item name title: 'Rename a category'.
	(newName = item name or: [ newName isNil or: [ newName isEmpty or: [ newName first = $* ] ] ])
		ifTrue: [ ^ self ].
	self class environment organization renameCategory: item name toBe: newName