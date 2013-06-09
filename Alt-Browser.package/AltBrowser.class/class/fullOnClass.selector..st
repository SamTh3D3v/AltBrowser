instance creation
fullOnClass: aClass selector: aSelector
	"Open on a class."

	| s |
	self rootItems contents detect: [ :each | (s := each findMethod: aSelector in: aClass) notNil ].
	self open selectPathForAbstractItem: s