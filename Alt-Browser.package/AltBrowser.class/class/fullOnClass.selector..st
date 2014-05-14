instance creation
fullOnClass: aClass selector: aSelector
	"Open on a class."

	| s a |
	aSelector isNil
		ifTrue: [ ^ self fullOnClass: aClass ].
	(self rootItems anySatisfy: [ :each | (s := each findMethod: aSelector in: aClass) notNil ])
		ifFalse: [ ^ self fullOnClass: aClass ].
	a := self new.
	a rbEnvironment: (RBClassEnvironment class: aClass).
	a open.
	a selectPathForAbstractItem: s