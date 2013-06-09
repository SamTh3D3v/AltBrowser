accessing
removeChildItem: anItem
	"Remove a child item from the contents."

	contents notNil
		ifTrue: [ contents remove: anItem ]