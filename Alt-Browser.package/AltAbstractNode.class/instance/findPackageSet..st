querying
findPackageSet: aRPackageSetOrMCWCOrMCPackage
	"Return the node if the item matches. By default, search among the kids."

	| res |
	self contents
		do: [ :each | 
			(res := each findPackageSet: aRPackageSetOrMCWCOrMCPackage) notNil
				ifTrue: [ ^ res ] ].
	^ nil