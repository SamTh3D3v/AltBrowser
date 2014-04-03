actions
selectIn: aBrowser
	(aBrowser class findPackage: self rpackage)
		ifNotNil: [ :item | 
			aBrowser history previous.
			aBrowser selectPathForAbstractItem: item ]
		ifNil: [ self error: 'Incorrect link' ]