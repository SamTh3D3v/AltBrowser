instance creation
fullOnClass: aClass selector: aSelector
	"Open on a class."

	| s |
	aSelector isNil ifTrue: [ ^ self fullOnClass: aClass]. 
	(self rootItems anySatisfy: [ :each | (s := each findMethod: aSelector in: aClass) notNil ]) ifFalse: [ ^ self fullOnClass: aClass ].
	self open selectPathForAbstractItem: s