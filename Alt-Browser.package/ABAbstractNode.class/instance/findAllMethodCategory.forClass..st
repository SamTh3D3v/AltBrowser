querying
findAllMethodCategory: aMethodCategory forClass: aClass
	"Return all nodes if the item matches. By default, search among the kids. Is lazy and will avoid triggering child building."

	| o |
	contents isNil
		ifFalse: [ 
			| res |
			contents
				do: [ :each | 
					(res := each findAllMethodCategory: aMethodCategory forClass: aClass) notNil
						ifTrue: [ 
							o isNil
								ifTrue: [ o := res ]
								ifFalse: [ o addAll: res ] ] ] ].
	^ o