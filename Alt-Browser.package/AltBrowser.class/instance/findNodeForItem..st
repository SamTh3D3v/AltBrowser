accessing
findNodeForItem: anItem
	| result |
	treeModel rootItems detect:
		[:rootItem |
		(result := rootItem findItem: anItem) notNil ].
	^ result