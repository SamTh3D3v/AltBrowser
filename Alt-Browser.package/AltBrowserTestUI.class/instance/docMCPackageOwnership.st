documentation
docMCPackageOwnership
	"We look if we can test if a method belongs to a saved version of a MCPackage (with a version) or if it is in a dirty set."

	"Solution. Get a snapshot via the repository (why can't I ask the currently loaded package, mate?), and search through the definitions."

	"Ok, do that through a temporary/locally created method (but this will mark the package as dirty :(). Try to unmark the package as dirty afterwards ? Disactivate that test for the time being."

	| mcw mcv |
	mcw := MCWorkingCopy forPackage: (MCPackage named: 'Alt-Browser').
	mcv := mcw repositoryGroup versionWithInfo: mcw ancestry ancestors first.
	AltBrowserTest compile: 'isTesting ^ true'.
	self
		assert:
			(((mcv snapshot definitions select: [ :e | e isMethodDefinition ]) select: [ :f | f className = 'AltBrowserTest' ])
				select: [ :m | m selector = #isTesting ]) isEmpty.
	AltBrowserTest removeSelector: #isTesting.
	AltBrowserTest organization removeEmptyCategories