querying
findPackage: aRPackage
	"Normal case is now that there is a single RPackage per RPackageSet, so we should catch that anyway."

	self rpackage == aRPackage
		ifTrue: [ ^ self ].
	^ nil