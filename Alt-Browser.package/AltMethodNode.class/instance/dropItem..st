drag and drop
dropItem: anItem
	"Only valid for an AltMethodCategoryNode or an AltMethodNode."

	| cm |
	(anItem isKindOf: AltMethodNode)
		ifFalse: [ ^ nil ].
	anItem sourceClass == self sourceClass
		ifFalse: [ 
			| selector |
			(anItem isKindOf: AltMethodNode)
				ifTrue: [ 
					selector := self sourceClass compile: anItem sourceCode classified: self methodCategory notifying: nil.
					^ self parentNode findMethod: selector in: self sourceClass ].
			^ nil ].
	anItem == self
		ifTrue: [ ^ nil ].
	cm := anItem compiledMethod.
	cm methodClass organization classify: anItem item under: self methodCategory suppressIfDefault: false.
	^ nil