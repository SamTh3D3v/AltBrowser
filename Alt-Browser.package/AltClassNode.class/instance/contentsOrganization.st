querying
contentsOrganization
	"Answer the organization of that object. This is the cached one (as probably displayed), maybe not the real one."

	^ Array
		withAll:
			((self item isMeta
				ifTrue: [ self contents ]
				ifFalse: [ self contents allButFirst: 2 ]) collect: [ :c | c item ])