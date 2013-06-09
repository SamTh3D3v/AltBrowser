querying
findAllClass: aClass
	"Return the node if the item matches. By default, search among the kids. Is lazy and will avoid triggering child building."

	| o |
	contents isNil
		ifFalse: [ 
			| res |
			contents
				do: [ :each | 
					(res := each findAllClass: aClass) notNil
						ifTrue: [
							o isNil
								ifTrue: [ o := res ]
								ifFalse: [ o addAll: res ] ] ] ].
	^ o