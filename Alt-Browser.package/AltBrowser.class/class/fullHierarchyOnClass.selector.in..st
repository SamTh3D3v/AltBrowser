instance creation
fullHierarchyOnClass: aClass selector: aSelectorOrNil in: aRBEnvironment
	"Open in hierarchy mode on a class."

	| a s |
	aSelectorOrNil
		ifNotNil: [ self rootItems anySatisfy: [ :each | (s := each findMethod: aSelectorOrNil in: aClass) notNil ] ].
	s ifNil: [ self rootItems anySatisfy: [ :each | (s := each findClass: aClass) notNil ] ].
	s ifNil: [ ^ self ].
	a := self new.
	a rbEnvironment: (aRBEnvironment forClasses: {aClass} , aClass allSuperclasses , aClass allSubclasses).
	a
		open;
		selectPathForAbstractItem: s