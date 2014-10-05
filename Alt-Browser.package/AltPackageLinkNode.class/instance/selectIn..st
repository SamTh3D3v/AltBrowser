actions
selectIn: aBrowser
	(aBrowser class findPackage: self rpackage)
		ifNotNil: [ :aPackage | 
			aBrowser history previous.
			aBrowser selectPathForAbstractItem: aPackage ]
		ifNil: [ self error: 'Incorrect link' ]