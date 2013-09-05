instance creation
restrictedToClass: aClass
	"Open on a class, and restricted to it."

	| s a |
	self rootItems detect: [ :each | (s := each findClass: aClass) notNil ].
	a := self new.
	a rbEnvironment: (a rbEnvironment forClasses: {aClass}).
	a open.
	a selectPathForAbstractItem: s