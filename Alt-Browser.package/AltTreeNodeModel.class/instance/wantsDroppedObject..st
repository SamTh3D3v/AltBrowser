testing
wantsDroppedObject: anotherItem
	"So far, this is unused. The wrapper never connect to that here. What is needed is to customize the PluggableTreeMorph, which is the model behind all elements of the tree."

	^ self item wantsDroppedObject: anotherItem