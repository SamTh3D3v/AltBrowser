querying
findMethod: aSelector
	"Return the node if the item matches. By default, search among the kids. Is lazy and will avoid triggering child building."

	| res |
	self contents
		do: [ :each | 
			(res := each findMethod: aSelector) notNil
				ifTrue: [ ^ res ] ].
	^ nil