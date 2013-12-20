querying
findPackage: aRPackage
	"Normal case is now that there is a single RPackage per RPackageSet, so we should catch that anyway."

	| pkSet pks |
	pkSet := item packageSet.
	pks := pkSet packages.
	pks first == aRPackage
		ifTrue: [ ^ self ].
	^ nil