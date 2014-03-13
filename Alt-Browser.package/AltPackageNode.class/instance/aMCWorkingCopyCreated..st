updating
aMCWorkingCopyCreated: anEvent
	"Prepare to create a category node if appropriate. We may have a few problems here of determination of the correct subset. Backoff if there is any doubt. Subset is simply up to the first -; otherwise the scheme becomes too complex, with splitting over"

	| i |
	i := anEvent workingCopy packageName charactersExactlyMatching: self packageName.
	(i > 1
		and: [ i < (anEvent workingCopy packageName size min: self packageName size) and: [ (self packageName at: i) = $- ] ])
		ifTrue: [ 
			| cat |
			cat := (self packageName copyFrom: 1 to: (self packageName indexOf: $-) - 1)
				-> (OrderedCollection with: self packageName asSymbol with: anEvent workingCopy packageName asSymbol).
			self parent notNil
				ifTrue: [ 
					self parent removeRPackage: self packageName.
					self parent addRPackage: cat.
					AltBrowser aNodeToRebuilt: self parent ]
				ifFalse: [ 
					AltBrowser replaceRootItem: self with: (AltPackageCategoryNode with: cat).
					self
						assert:
							(AltBrowser rootItems
								noneSatisfy: [ :each | 
									| j |
									j := each title charactersExactlyMatching: self packageName.
									j > 1 and: [ (self packageName at: j) = $- and: [ each code ~= cat ] ] ]) ].
			^ true ].
	^ false