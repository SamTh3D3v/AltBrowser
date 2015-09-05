instance creation
openOnClass: aClass selector: aSelector
	"Open on a class."

	| s  |
	aSelector isNil
		ifTrue: [ ^ self openOnClass: aClass ].
	self rootItems
		anySatisfy:
			[ :each | (s := each findMethod: aSelector in: aClass) notNil ].
	self new
		open;
		selectPathForAbstractItem: s;
		yourself