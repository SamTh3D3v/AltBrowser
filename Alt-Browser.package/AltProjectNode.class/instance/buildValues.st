private
buildValues
	| values projectPackages |
	projectPackages := IdentitySet new.
	self projectVersionSpec
		do: [ :aSpec | 
			projectPackages
				addAll:
					((aSpec packages select: [ :e | e isKindOf: MetacelloPackageSpec ])
						collect: [ :p | p name asSymbol ]) ].
	^ values := {item key}
		,
			(projectPackages asSortedCollection
				select: [ :p | 
					(p beginsWith: 'BaselineOf') not
						and: [ (p beginsWith: 'ConfigurationOf') not
								and: [ (MCWorkingCopy hasPackageNamed: p) ~~ false ] ] ])