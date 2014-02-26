accessing
rebuildChildren
	"Force a rebuild of the children, including on the item. Is it necessary to ask the item contents as well, or can we expect this to have been done in the updating process?"

	item rebuildContents.
	self rebuildContents