actions
doubleClickIn: anItem
	"Animate the link to the class extension in the package. It triggers an animation doing so."

	| aBrowser |
	aBrowser := anItem model.
	(aBrowser class findPackage: self rpackage)
		ifNotNil: [ :aPackage | 
			(aPackage
				findMethodCategory: self methodCategory
				in: self parent itemClass)
				ifNotNil: [ :aClassExtension | 
					aBrowser history hasPrevious
						ifTrue: [ aBrowser history previous ].
					aBrowser openPathForAbstractItem: aClassExtension.
					(aBrowser root findItem: aClassExtension)
						ifNotNil:
							[ :n | aBrowser treeMorph moveSelectionIndexTo: (aBrowser root indexOf: n) ]
						ifNil: [ ^ false ].
					^ true ]
				ifNil: [ ^ false ] ]
		ifNil: [ ^ false ]