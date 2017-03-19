enumerating
doItem: aRecord
	"Do an item node."

	operators add: aRecord selector.
	^super doItem: aRecord