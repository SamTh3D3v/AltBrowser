actions
selectIn: aBrowser
	(aBrowser class findPackage: self rpackage)
		ifNotNil:
			[ :aPackage | 
			(aPackage
				findMethodCategory: self methodCategory
				in: self parent itemClass)
				ifNotNil:
					[ :aClassExtension | 
					aBrowser history hasPrevious
						ifTrue: [ aBrowser history previous ].
					aBrowser openPathForAbstractItem: aClassExtension.
					(aBrowser root findItem: aClassExtension)
						ifNotNil:
							[ :n | aBrowser treeMorph moveSelectionIndexTo: (aBrowser root indexOf: n) ].
					^ true ]
				ifNil: [ ^ false ] ]
		ifNil: [ ^ false ]