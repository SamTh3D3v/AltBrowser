*alt-browser
asAltTree
	"Hidden root."

	| root |
	root := AltTreeItemModel new.
	root contents: (Array with: (self asAltTreeItem parent: root)).
	^ root