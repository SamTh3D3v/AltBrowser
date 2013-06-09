querying
findMethodCategory: aMethodCategory in: aClass
	"Return the node if the item matches. By default, search among the kids. Is lazy and will avoid triggering child building."

	| res |
	self contents
		do: [ :each | 
			(res := each findMethodCategory: aMethodCategory in: aClass) notNil
				ifTrue: [ ^ res ] ].
	^ nil