querying
findPackageSet: aPackageSetOrMCWorkingCopy
	^ (item = aPackageSetOrMCWorkingCopy or: [ item packageSet = aPackageSetOrMCWorkingCopy or: [item package = aPackageSetOrMCWorkingCopy]])
		ifTrue: [ self ]
		ifFalse: [ nil ]