instance creation
fullOnPackage: aPackage in: aRBEnvironment
	"Open on a package, and restrict to it."

	| s  |
	(self rootItems
		anySatisfy: [ :each | (s := each findPackage: aPackage) notNil ])
		ifFalse: [ ^ self open ].
	self new
		rbEnvironment: (aRBEnvironment forPackages: {aPackage});
		open;
		selectPathForAbstractItem: s;
		yourself