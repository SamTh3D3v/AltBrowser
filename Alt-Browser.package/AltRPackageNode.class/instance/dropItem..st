drag and drop
dropItem: anItem
	"Used to move methods from a package to another, or from a normal category to an extension-labeled one."

	| cm |
	anItem class == AltClassNode
		ifTrue: [ 
			"This probably works."
			anItem item category: self packageName.
			^ self ].
	(anItem isKindOf: AltMethodNode)
		ifFalse: [ ^ self ].
	cm := anItem compiledMethod.
	cm methodClass organization
		classify: anItem item
		under: self item packageSet packages first methodCategoryPrefix
		suppressIfDefault: false