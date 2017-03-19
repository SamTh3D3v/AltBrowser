enumerating
doBlock: aRecord
	"Do an block node."

	^aRecord setChildren: (self doRecords: aRecord children)