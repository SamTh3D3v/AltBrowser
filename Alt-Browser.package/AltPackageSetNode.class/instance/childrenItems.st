private
childrenItems
	"Ensure that the RPackage with the same name as the MCPackage is first to put the extensions in the right place."

	"Note: do all MCPackages have a RPackage of the same name?"

	| o |
	o := OrderedCollection new.
	(self item packageSet packages sorted: [ :a :b | a name < b name ])
		do: [ :package | 
			package name = self item packageName
				ifTrue: [ o := ({package} , (self class orderClasses: package definedClasses asOrderedCollection) , o) asOrderedCollection ]
				ifFalse: [ o add: package ] ].
	^ o