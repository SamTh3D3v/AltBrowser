*alt-browser
asAltTree
	"Hidden root."

	^ AltTreeItemModel new
		contents: (Array with: self asAltTreeItem);
		yourself