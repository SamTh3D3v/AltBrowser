drag and drop
dropItem: anItem
	"Adding a class here will trigger the change category of class."

	anItem itemClass category: self categoryName.
	^ self findClass: anItem itemClass