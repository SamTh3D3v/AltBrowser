actions
selectIn: aBrowser
	(aBrowser class findPackage: self rpackage)
		ifNotNil: [ :item | aBrowser selectPathForAbstractItem: item ]
		ifNil: [ self error: 'Incorrect link' ]