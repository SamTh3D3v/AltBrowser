querying
findMethod: aSelector in: aClass
	"Return the node if the item matches. By default, search among the kids."

	"Make it lazy : do not trigger contents generation."

	^ nil