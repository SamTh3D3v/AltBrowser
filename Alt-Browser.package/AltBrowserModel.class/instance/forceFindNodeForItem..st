accessing
forceFindNodeForItem: anItem
	| result |
	tree getRoots detect:
		[:rootItem |
		(result := rootItem forceFindItem: anItem) notNil ].
	^ result