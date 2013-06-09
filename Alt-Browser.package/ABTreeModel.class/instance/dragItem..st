as yet unclassified
dragItem: anItem
	(anItem isKindOf: Association)
		ifTrue: [ ^ anItem key ].
	^ anItem