instance creation
fullOnClass: aClass selector: aSelector
	"Open on a class."

	| s |
	self roots detect: [ :each | (s := each findMethod: aSelector in: aClass) notNil ].
	self open selectPathForAbstractItem: s