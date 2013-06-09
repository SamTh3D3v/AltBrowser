querying
findClass: aClass
	"Return the node if the item matches. By default, search among the kids."

	| res |
	self contents
		do: [ :each | 
			(res := each findClass: aClass) notNil
				ifTrue: [ ^ res ] ].
	^ nil