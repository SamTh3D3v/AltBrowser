*alt-list
asAltTree
	"Hidden root."

	^ AltTreeItemModel new
		contents: (Array with: self asAltTreeItem);
		yourself