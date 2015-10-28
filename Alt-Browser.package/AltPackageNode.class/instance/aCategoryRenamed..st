updating
aCategoryRenamed: anEvent
	"Rebuilt itself if the event refer to a package belonging to us (with the approximation RPackage = category-name."

	^ (RPackageOrganizer default
		category: anEvent newCategoryName
		matches: self packageName)
		ifTrue: [ AltBrowserNeo aNodeToRebuilt: self.
			true ]
		ifFalse: [ false ]