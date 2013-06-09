querying
findPackage: aRPackage
	"As a package extension node inherit and is set below, then it is never reached."

	^ item == aRPackage
		ifTrue: [ self ]
		ifFalse: [ nil ]