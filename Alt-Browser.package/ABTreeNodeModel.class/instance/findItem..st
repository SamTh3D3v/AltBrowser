querying
findItem: anItem
	"searching for an item, returns a node."

	self item == anItem
		ifTrue: [ ^ self ].
	contents notNil
		ifTrue: [ 
			contents
				do: [ :e | 
					| s |
					(s := e findItem: anItem) notNil
						ifTrue: [ ^ s ] ] ].
	^ nil