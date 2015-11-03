accessing
rebuildContents
	"Force a rebuild of the contents. Cache to avoid recreating too many objects, and also because the layer above (MorphTreeMorph) may record instances of us to track state."

	contents := nil