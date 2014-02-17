instance creation
fullOnClass: aClass
	"Open on a class."

	| s |
	(self rootItems anySatisfy: [ :each | (s := each findClass: aClass) notNil ])
		ifFalse: [ ^ self ].
	self open selectPathForAbstractItem: s