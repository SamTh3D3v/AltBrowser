querying
findPackage: aRPackage
	self contents
		do: [ :each | (each findPackage: aRPackage) ifNotNil: [ :f | ^ f ] ].
	^ nil