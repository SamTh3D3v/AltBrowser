accessing
childNodeFromItem: anItem
	"When creating a node model, tell which environment it's being created in (parent gives environment to children)."

	^ (super childNodeFromItem: anItem)
		rbEnvironment: self rbEnvironment;
		yourself