accessing
contents
	^ contents
		ifNil: [ contents := ((((self projectVersionSpec packages
				packageSpecsInLoadOrderFor: self projectVersionSpec)
				select: [ :e | e isKindOf: MetacelloPackageSpec ])
				collect: [ :p | MCWorkingCopy hasPackageNamed: p name ])
				reject: [ :p | p == false ])
				collect: [ :each | AltPackageLinkNode with: each package name parent: self ] ]