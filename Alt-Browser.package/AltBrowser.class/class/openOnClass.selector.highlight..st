instance creation
openOnClass: aClass selector: aSelector highlight: autoSelectString
	"Open on a class."

	| s a |
	aSelector isNil
		ifTrue: [ ^ self openOnClass: aClass ].
	(self rootItems
		anySatisfy:
			[ :each | (s := each findMethod: aSelector in: aClass) notNil ])
		ifFalse: [ ^ self openOnClass: aClass ].
	a := self open.
	a selectPathForAbstractItem: s.
	^ a