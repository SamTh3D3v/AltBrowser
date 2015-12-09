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
					aBrowser selectPathForAbstractItem: aClassExtension.
					^ true ]
				ifNil: [ ^ false ] ]
		ifNil: [ ^ false ]