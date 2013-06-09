querying
findPackage: aRPackage
	"If a package set has a single package, then the package set takes the package place in the tree and reacts as such."

	| pkSet pks |
	pkSet := item packageSet.
	pks := pkSet packages.
	(pks size = 1 and: [ pks first == aRPackage ])
		ifTrue: [ ^ self ]
		ifFalse: [ ^ super findPackage: aRPackage ]