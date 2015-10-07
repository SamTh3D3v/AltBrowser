*alt-browser
asAltTreeItemModel
	| root |
	self size = 1
		ifTrue: [ ^ AltTreeItemModel on: self first ].
	root := AltTreeItemModel on: self first.
	root
		contents:
			(self allButFirst
				collect: [ :ci | 
					ci asAltTreeItemModel
						parent: root;
						yourself ]);
		isExpanded: true.
	^ root