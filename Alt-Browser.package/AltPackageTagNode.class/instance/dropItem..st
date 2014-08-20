drag and drop
dropItem: anItem
	"Adding a class here will trigger the change category of class."

	anItem itemClass category: self category.
	^ self findClass: anItem itemClass