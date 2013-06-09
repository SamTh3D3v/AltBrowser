querying
findClassComment: aClass
	"Return the node if the item matches. By default, search among the kids. Is lazy and will avoid triggering child building."

	contents isNil
		ifFalse: [ 
			| res |
			contents
				do: [ :each | 
					(res := each findClassComment: aClass) notNil
						ifTrue: [ ^ res ] ] ].
	^ nil