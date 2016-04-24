instance creation
inspect: anObject
	^ self new
		object:
			(AltEyeTreeItemModel new
				contents:
					(Array
						with:
							((AltEyeTreeItemModel on: (RootEyeElement host: anObject))
								isExpanded: true));
				yourself);
		open