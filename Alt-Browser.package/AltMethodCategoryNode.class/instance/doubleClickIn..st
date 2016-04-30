actions
doubleClickIn: anItem
	"If we are an extension protocol, then double click will move us to the package extension place."

	| aBrowser |
	self methodCategory first = $*
		ifFalse: [ ^ false ].
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