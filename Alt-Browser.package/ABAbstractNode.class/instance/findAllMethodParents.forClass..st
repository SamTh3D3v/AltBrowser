querying
findAllMethodParents: aMethodSelector forClass: aClass
	"Return all nodes if the item matches. By default, search among the kids. Is lazy and will avoid triggering child building."

	| o res |
	self contents
		do: [ :each | 
			(res := each findAllMethodParents: aMethodSelector forClass: aClass) notNil
				ifTrue: [ 
					o isNil
						ifTrue: [ o := res ]
						ifFalse: [ o addAll: res ] ] ].
	^ o