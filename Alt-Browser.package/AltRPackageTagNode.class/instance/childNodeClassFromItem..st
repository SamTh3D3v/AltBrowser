private
childNodeClassFromItem: anItem
	"Beware of the assert condition. We should not reach it."

	((anItem isKindOf: Class) or: [ (anItem isKindOf: Metaclass) or: [ anItem isTrait ] ])
		ifTrue: [ ^ AltClassNode ].
	self assert: false	"We should never reach that point."