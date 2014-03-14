updating
aMCWorkingCopyCreated: anEvent
	"Prepare to create a category node if appropriate. We may have a few problems here of determination of the correct subset. Backoff if there is any doubt. Subset is simply up to the first -; otherwise the scheme becomes too complex, with splitting over"

	|  pName prefix herePrefix |
	pName := anEvent workingCopy packageName.
	prefix := pName copyUpTo: $-.
	herePrefix := self packageName copyUpTo: $-.
	prefix isEmpty
		ifTrue: [ ^ false ].
	prefix = herePrefix
		ifTrue: [ 
			| cat |
			cat := prefix -> (OrderedCollection with: self packageName asSymbol with: pName asSymbol).
			self parent notNil
				ifTrue: [ 
					self parent removeRPackage: self packageName.
					self parent addRPackage: cat.
					AltBrowser aNodeToRebuilt: self parent ]
				ifFalse: [ AltBrowser replaceRootItem: self with: (AltPackageCategoryNode with: cat) ].
			^ true ].
	^ false