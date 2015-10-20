querying
findItem: anItem
	"searching for an item, returns a node. Account for expanded nodes."

	self item == anItem
		ifTrue: [ ^ self ].
	self isExpanded
		ifFalse: [ ^ nil ].
	self contents
		do:
			[ :e | 
			| s |
			(s := e findItem: anItem) notNil
				ifTrue: [ ^ s ] ].
	^ nil