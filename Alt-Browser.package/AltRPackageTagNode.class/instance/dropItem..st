drag and drop
dropItem: anItem
	"Adding a class here will trigger the change category of class."

	anItem class == AltClassNode
		ifTrue: [ 
			"This probably works."
			anItem item category: item name.
			^ self ]