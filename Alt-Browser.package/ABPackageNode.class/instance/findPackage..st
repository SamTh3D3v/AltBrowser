querying
findPackage: aMCWorkingCopy
	"As a package extension node inherit and is set below, then it is never reached."

	^ item == aMCWorkingCopy
		ifTrue: [ self ]
		ifFalse: [ nil ]