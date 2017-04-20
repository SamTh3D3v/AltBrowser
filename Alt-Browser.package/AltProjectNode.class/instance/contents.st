accessing
contents
	| projectPackages |
	projectPackages := IdentitySet new.
	self projectVersionSpec
		do: [ :aSpec | 
			projectPackages
				addAll:
					((aSpec packages select: [ :e | e isKindOf: MetacelloPackageSpec ])
						collect: [ :p | p name asSymbol ]) ].
	^ contents
		ifNil: [ contents := {(AltPackageNode with: item parent: self)}
				,
					(((projectPackages asSortedCollection
						collect: [ :p | MCWorkingCopy hasPackageNamed: p ])
						reject: [ :p | p == false ])
						collect: [ :each | AltPackageNode with: each package name parent: self ]) ]