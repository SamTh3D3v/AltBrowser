as yet unclassified
childNodeClassFromItem: anItem
	(anItem isKindOf: Class)
		ifTrue: [ ^ ABClassNode ]
		ifFalse: [ ^ self class ]