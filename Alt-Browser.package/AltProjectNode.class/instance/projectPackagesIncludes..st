private
projectPackagesIncludes: aPackageName
	(Smalltalk at: item key ifAbsent: [  ]) isNil
		ifTrue: [ ^ false ].
	self projectVersionSpec
		do: [ :aSpec | 
			aSpec packages
				do: [ :p | 
					((p isKindOf: MetacelloPackageSpec) and: [ p name = aPackageName ])
						ifTrue: [ ^ true ] ] ].
	^ false