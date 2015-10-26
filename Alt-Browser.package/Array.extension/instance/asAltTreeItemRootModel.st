*alt-browser
asAltTreeItemRootModel
	| root |
	self size = 1
		ifTrue: [ ^ AltTreeItemModel on: self first ].
	root := AltTreeItemRootModel on: self first.
	root
		contents:
			(self allButFirst
				collect: [ :ci | 
					ci asAltTreeItemModel
						parent: root;
						yourself ]);
		isExpanded: true.
	^ root