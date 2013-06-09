private
childrenItems
	"Ensure that the RPackage with the same name as the MCPackage is first to put the extensions in the right place."

	| o |
	o := OrderedCollection new.
	self item packageSet packages
		do: [ :package | 
			package name = self item packageName
				ifTrue: [ 
					o := ({package} , (self class orderClasses: package definedClasses asOrderedCollection) , o)
						asOrderedCollection ]
				ifFalse: [ o add: package ] ].
	^ o