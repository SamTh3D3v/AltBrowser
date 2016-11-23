accessing
contents
	^ contents
		ifNil: [ self projectRegistration ifNil: [ ^ #() ].
			contents := {(AltPackageNode with: item parent: self)}
				,
					(((((self projectVersionSpec packages
						packageSpecsInLoadOrderFor: self projectVersionSpec)
						select: [ :e | e isKindOf: MetacelloPackageSpec ])
						collect: [ :p | MCWorkingCopy hasPackageNamed: p name ])
						reject: [ :p | p == false ])
				collect: [ :each | AltPackageNode with: each package name parent: self ]) ]