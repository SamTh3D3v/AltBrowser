instance creation
openOnClass: aClass
	"Open on a class."

	| s |
	(self rootItems
		anySatisfy: [ :each | (s := each findClass: aClass) notNil ])
		ifFalse: [ ^ nil ].
	^ self new
		selectPathForAbstractItem: s;
		open;
		yourself