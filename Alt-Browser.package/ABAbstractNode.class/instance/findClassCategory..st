querying
findClassCategory: aCat
	"Return the node if the item matches. By default, search among the kids. Is lazy and will avoid triggering child building."

	contents isNil
		ifFalse: [ 
			| res |
			contents
				do: [ :each | 
					(res := each findClassCategory: aCat) notNil
						ifTrue: [ ^ res ] ] ].
	^ nil