instance creation
fullOnClass: aClass selector: aSelector
	"Open on a class."

	| s |
	aSelector isNil ifTrue: [ ^ self fullOnClass: aClass]. 
	self rootItems detect: [ :each | (s := each findMethod: aSelector in: aClass) notNil ].
	self open selectPathForAbstractItem: s