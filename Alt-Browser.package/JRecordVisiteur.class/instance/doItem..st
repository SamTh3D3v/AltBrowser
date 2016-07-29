enumerating
doItem: aRecord
	"Do an item node."

	^aRecord setChildren: (self doRecords: aRecord children)