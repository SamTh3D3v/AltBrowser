drag and drop
dropItem: anItem
	"Used to move methods from a package to another, or from a normal category to an extension-labeled one. Note that a drop on a different class in extensions will copy it to that class."

	| cm |
	cm := anItem compiledMethod.
	cm methodClass == self itemClass
		ifTrue: [ cm methodClass organization
				classify: anItem selector
				under: self methodCategory
				suppressIfDefault: false ]
		ifFalse: [ self itemClass
				compile: cm sourceCode
				classified: self methodCategory
				notifying: nil ].
	^ self findMethod: anItem selector in: self itemClass