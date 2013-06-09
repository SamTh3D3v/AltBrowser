instance creation
fullOnClass: aClass
	"Open on a class."

	| s |
	self rootItems detect: [ :each | (s := each findClass: aClass) notNil ].
	self open selectPathForAbstractItem: s