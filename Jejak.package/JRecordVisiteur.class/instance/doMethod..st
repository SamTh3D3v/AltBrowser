enumerating
doMethod: aRecord
	^aRecord setChildren: (self doRecords: aRecord children)