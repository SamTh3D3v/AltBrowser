instance creation
fullOnClass: aClass in: aRBEnvironment
	"Open on a class, and restrict to it."

	| s a |
	self rootItems detect: [ :each | (s := each findClass: aClass) notNil ].
	a := self new.
	a rbEnvironment: (aRBEnvironment forClasses: {aClass}).
	a open.
	a selectPathForAbstractItem: s