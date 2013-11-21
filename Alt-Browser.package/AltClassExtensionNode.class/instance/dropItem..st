drag and drop
dropItem: anItem
	"Used to move methods from a package to another, or from a normal category to an extension-labeled one."

	| cm |
	(anItem isKindOf: AltMethodNode)
		ifFalse: [ ^ nil ].
	cm := anItem compiledMethod.
	cm methodClass organization classify: anItem item under: self methodCategory suppressIfDefault: false.
	self contents
		do: [ :each | 
			| res |
			(res := each findMethod: cm selector in: self sourceClass) notNil
				ifTrue: [ ^ res ] ].
	^ nil