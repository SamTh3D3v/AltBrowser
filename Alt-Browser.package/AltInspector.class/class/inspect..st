as yet unclassified
inspect: anObject
	^ self new
		object: (AltEyeTreeItemModel on: (RootEyeElement host: anObject));
		open