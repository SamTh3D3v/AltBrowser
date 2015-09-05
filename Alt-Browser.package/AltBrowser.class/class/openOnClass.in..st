instance creation
openOnClass: aClass in: aRBEnvironment
	"Open on a class, and restrict to it."

	| s  |
	(self rootItems
		anySatisfy: [ :each | (s := each findClass: aClass) notNil ])
		ifFalse: [ ^ self ].
	self new
		rbEnvironment: (aRBEnvironment forClasses: {aClass});
		open;
		selectPathForAbstractItem: s;
		yourself