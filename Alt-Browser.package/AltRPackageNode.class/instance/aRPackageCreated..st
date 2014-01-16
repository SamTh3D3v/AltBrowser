updating
aRPackageCreated: anEvent
	"Do we belong to that package set ? It seems that sometimes, at that point, the RPackage is not yet visible in the set."

	self rpackage == anEvent package
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ]
		ifFalse: [ ^ false ]