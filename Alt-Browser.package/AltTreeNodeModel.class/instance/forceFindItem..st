querying
forceFindItem: anItem
	"searching for an item, returns a node."

	self item == anItem
		ifTrue: [ ^ self ].
	self contents
		do: [ :e | 
			| s |
			(s := e forceFindItem: anItem) notNil
				ifTrue: [ ^ s ] ].
	^ nil