accessing
item: anItem
	anItem ifNotNil: [ copy := anItem value ].
	^ super item: anItem