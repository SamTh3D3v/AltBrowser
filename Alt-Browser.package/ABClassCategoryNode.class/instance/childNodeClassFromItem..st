as yet unclassified
childNodeClassFromItem: anItem
	(anItem isBehavior or: [ anItem isTrait ])
		ifTrue: [ ^ ABClassNode ]
		ifFalse: [ ^ self class ]