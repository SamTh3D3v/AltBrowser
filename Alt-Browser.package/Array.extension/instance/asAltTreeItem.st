*alt-browser
asAltTreeItem
	^ (AltTreeItemModel on: self first)
		contents: (self allButFirst collect: [ :ci | ci asAltTreeItem ]);
		isExpanded: true;
		yourself