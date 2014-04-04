querying
findClassComment: aClass
	"Return the node if the item matches. By default, search among the kids. Is lazy and will avoid triggering child building."

	^ nil