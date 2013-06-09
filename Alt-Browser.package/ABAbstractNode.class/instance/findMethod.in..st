querying
findMethod: aSelector in: aClass
	"Return the node if the item matches. By default, search among the kids."

	| res |
	self contents
		do: [ :each | 
			(res := each findMethod: aSelector in: aClass) notNil
				ifTrue: [ ^ res ] ].
	^ nil