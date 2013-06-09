accessing
forceFindNodeForItem: anItem
	| result |
	treeModel getRoots detect:
		[:rootItem |
		(result := rootItem forceFindItem: anItem) notNil ].
	^ result