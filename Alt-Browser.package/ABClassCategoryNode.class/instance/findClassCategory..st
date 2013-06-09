querying
findClassCategory: aCat
	"Return the node if the item matches. By default, search among the kids. Is lazy and will avoid triggering child building."

	item == aCat
		ifTrue: [ ^ self ]
		ifFalse: [ ^ nil ]