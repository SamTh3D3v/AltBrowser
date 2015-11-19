*alt-browser
asAltTreeItem
	| root |
	root := AltTreeItemModel on: self first.
	root
		contents:
			(self allButFirst
				collect: [ :ci | 
					ci asAltTreeItem
						parent: root;
						yourself ]);
		isExpanded: true.
	^ root