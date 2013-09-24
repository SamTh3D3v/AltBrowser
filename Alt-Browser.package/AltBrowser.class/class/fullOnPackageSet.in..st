instance creation
fullOnPackageSet: aMCWorkingCopy in: aRBEnvironment
	"Open on a package, and restrict to it."

	| s a |
	self rootItems detect: [ :each | (s := each findPackageSet: aMCWorkingCopy) notNil ].
	a := self new.
	a rbEnvironment: (aRBEnvironment forPackages: aMCWorkingCopy packageSet packages).
	a open.
	s notNil
		ifTrue: [ a selectPathForAbstractItem: s ]