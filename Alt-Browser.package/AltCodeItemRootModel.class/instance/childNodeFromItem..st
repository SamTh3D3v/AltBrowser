accessing
childNodeFromItem: anItem
	"Only one root item. All others are normal items."

	^ (self class superclass on: anItem)
		parent: self;
		rbEnvironment: self rbEnvironment;
		yourself