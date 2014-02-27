drag and drop
dropItem: anItem
	"Adding a class here will trigger the change category of class."

	"This probably works."

	anItem itemClass category: self categoryName.
	^ self