querying
findAllClass: aClass
	"Return the node if the item matches. By default, search among the kids."

	| o res |
	self contents
		do: [ :each | 
			(res := each findAllClass: aClass) notNil
				ifTrue: [
					o isNil
						ifTrue: [ o := res ]
						ifFalse: [ o addAll: res ] ] ].
	^ o