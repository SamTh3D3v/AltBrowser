querying
findPackageSet: aPackageSetOrMCWorkingCopy
	^ (item == aPackageSetOrMCWorkingCopy or: [ item packageSet == aPackageSetOrMCWorkingCopy ])
		ifTrue: [ self ]
		ifFalse: [ nil ]