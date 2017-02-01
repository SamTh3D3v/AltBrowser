drag and drop
dropItem: anItem
	"Used to move methods from a package to another, or from a normal category to an extension-labeled one."

	| cm |
	cm := anItem compiledMethod.
	cm methodClass = self itemClass
		ifTrue: [ cm methodClass organization
				classify: anItem selector
				under: self methodCategory
				suppressIfDefault: false ]
		ifFalse: [ self sourceClass
				compile: anItem sourceCode
				classified: self methodCategory
				notifying: nil ]