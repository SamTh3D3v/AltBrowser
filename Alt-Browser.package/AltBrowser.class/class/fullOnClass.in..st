instance creation
fullOnClass: aClass in: aRBEnvironment
	"Open on a class, and restrict to it."

	| s a |
	(self rootItems anySatisfy: [ :each | (s := each findClass: aClass) notNil ])
		ifFalse: [ ^ self ].
	a := self new.
	a rbEnvironment: (aRBEnvironment forClasses: {aClass}).
	a open.
	a selectPathForAbstractItem: s