private
childrenItems
	"Ensure that the RPackage with the same name as the MCPackage is first to put the extensions in the right place."

	"Note: do all MCPackages have a RPackage of the same name?"

	| o hasRPackageOfSameName |
	o := OrderedCollection new.
	hasRPackageOfSameName := false.
	self item packageSet packages
		do: [ :package | 
			package name = self item packageName
				ifTrue: [ 
					o := ({package} , (self class orderClasses: package definedClasses asOrderedCollection) , o) asOrderedCollection.
					hasRPackageOfSameName := true ]
				ifFalse: [ o add: package ] ].
	self assert: hasRPackageOfSameName.
	^ o