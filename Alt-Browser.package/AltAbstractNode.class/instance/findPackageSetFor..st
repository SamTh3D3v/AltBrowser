querying
findPackageSetFor: aRPackage
	"Return the node if the item matches. By default, search among the kids. Is lazy and will avoid triggering child building."

	"Not lazy : triggers contents generation."

	| res |
	self contents
		do: [ :each | 
			(res := each findPackageSetFor: aRPackage) notNil
				ifTrue: [ ^ res ] ].
	^ nil