querying
findAllClass: aClass
	"Return the node if the item matches. By default, search among the kids."
	
	"Make it lazy : do not trigger contents generation."

	| o res |
	contents notNil
		ifTrue: [ 
			self contents
				do: [ :each | 
					(res := each findAllClass: aClass) notNil
						ifTrue: [ 
							o isNil
								ifTrue: [ o := res ]
								ifFalse: [ o addAll: res ] ] ] ].
	^ o