accessing
findNodeForItem: anItem
	| result |
	tree getRoots detect:
		[:rootItem |
		(result := rootItem findItem: anItem) notNil ].
	^ result