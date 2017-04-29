private
projectPackagesIncludes: aPackageName
	self projectVersionSpec
		do: [ :aSpec | 
			aSpec packages
				do: [ :p | 
					((p isKindOf: MetacelloPackageSpec) and: [ p name = aPackageName ])
						ifTrue: [ ^ true ] ] ].
	^ false