updating
aMCWorkingCopyCreated: anEvent
	"Prepare to create a category node if appropriate. We may have a few problems here of determination of the correct subset. Backoff if there is any doubt."

	| i |
	i := anEvent workingCopy packageName charactersExactlyMatching: self packageName.
	(i > 1 and: [ i < (anEvent workingCopy packageName size min: self packageName size) and: [ (self packageName at: i) = $- ] ])
		ifTrue: [ 
			| cat "Common subset. Create a new node." |
			cat := (self packageName copyFrom: 1 to: i - 1)
				-> (OrderedCollection with: self packageName asSymbol with: anEvent workingCopy packageName asSymbol).
			self parent notNil
				ifTrue: [ 
					self parent removeRPackage: self packageName.
					self parent addRPackage: cat.
					AltBrowser aNodeToRebuilt: self parent ]
				ifFalse: [ 
					| catNode |
					catNode := AltPackageCategoryNode with: cat.
					AltBrowser rootItems remove: self.
					AltBrowser rootItems add: catNode.
					AltBrowser aNodeAdded: catNode ].
			^ true ].
	^ false