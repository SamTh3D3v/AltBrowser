accessing
childNodeFromItem: anItem
	"Only one root item. All others are normal items."

	^ (self superclass on: anItem) rbEnvironment: self rbEnvironment