accessing
findNodeForItem: anItem
	| result |
	treeModel getRoots detect:
		[:rootItem |
		(result := rootItem findItem: anItem) notNil ].
	^ result