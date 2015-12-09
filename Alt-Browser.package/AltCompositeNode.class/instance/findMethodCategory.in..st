querying
findMethodCategory: aMethodCategory in: aClass
	"Return the node if the item matches. By default, search among children items."

	| res |
	self contents
		do:
			[ :each | 
			(res := each findMethodCategory: aMethodCategory in: aClass) notNil
				ifTrue: [ ^ res ] ].
	^ nil