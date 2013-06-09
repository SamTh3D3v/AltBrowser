querying
findClass: aClass
	"Return the node if the item matches. By default, search among the kids."

	| found res |
	self contents
		do: [ :each | 
			(res := each findClass: aClass) notNil
				ifTrue: [ found := res ] ].
	^ found