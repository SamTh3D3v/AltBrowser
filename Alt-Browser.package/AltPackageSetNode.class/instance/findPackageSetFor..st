querying
findPackageSetFor: aRPackage
	"Search among the packages associated to the set."

	| pkSet pks |
	pkSet := item packageSet.
	pks := pkSet packages.
	(pks includes: aRPackage)
		ifTrue: [ ^ self ]
		ifFalse: [ ^ nil ]