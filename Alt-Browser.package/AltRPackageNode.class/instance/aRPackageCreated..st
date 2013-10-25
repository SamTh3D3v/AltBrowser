updating
aRPackageCreated: anEvent
	"Do we belong to that package set ? It seems that sometimes, at that point, the RPackage is not yet visible in the set."

	| pkSet pks |
	pkSet := item packageSet.
	pks := pkSet packages.
	(pks includes: anEvent package)
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ]
		ifFalse: [ ^ false ]