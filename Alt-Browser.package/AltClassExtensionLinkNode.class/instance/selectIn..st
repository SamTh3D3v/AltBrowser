actions
selectIn: aBrowser
	(aBrowser class
		findMethodCategory: self methodCategory
		in: self parent itemClass)
		ifNotNil:
			[ :aClassExtension | 
			aBrowser history previous.
			aBrowser selectPathForAbstractItem: aClassExtension ]
		ifNil: [ self error: 'Incorrect link' ]