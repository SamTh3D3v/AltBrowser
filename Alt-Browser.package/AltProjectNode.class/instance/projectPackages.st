private
projectPackages
	| values projectPackages |
	projectPackages := IdentitySet new.
	self projectVersionSpec
		do: [ :aSpec | 
			projectPackages
				addAll:
					((aSpec packages select: [ :e | e isKindOf: MetacelloPackageSpec ])
						collect: [ :p | p name asSymbol ]) ].
	^ projectPackages asSortedCollection
		select: [ :p | (MCWorkingCopy hasPackageNamed: p) ~~ false ]