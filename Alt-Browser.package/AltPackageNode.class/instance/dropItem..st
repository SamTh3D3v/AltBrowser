drag and drop
dropItem: anItem
	"Used to move methods from a package to another, or from a normal category to an extension-labeled one."

	| cm |
	anItem class == AltClassNode
		ifTrue: [ 
			"This probably works."
			anItem itemClass category: self packageName.
			^ self ].
	anItem isMethodNode
		ifFalse: [ ^ self ].
	cm := anItem compiledMethod.
	cm methodClass organization
		classify: anItem selector
		under: self rpackage methodCategoryPrefix
		suppressIfDefault: false