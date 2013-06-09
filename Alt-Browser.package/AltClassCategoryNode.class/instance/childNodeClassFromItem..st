private
childNodeClassFromItem: anItem
	(anItem isBehavior or: [ anItem isTrait ])
		ifTrue: [ ^ AltClassNode ]
		ifFalse: [ ^ self class ]