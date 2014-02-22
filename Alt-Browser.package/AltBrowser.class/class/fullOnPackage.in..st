instance creation
fullOnPackage: aPackage in: aRBEnvironment
	"Open on a package, and restrict to it."

	| s a |
	(self rootItems anySatisfy: [ :each | (s := each findPackage: aPackage) notNil ])
		ifFalse: [ ^ self open ].
	a := self new.
	a rbEnvironment: (aRBEnvironment forPackages: {aPackage}).
	a open.
	a selectPathForAbstractItem: s