instance creation
fullHierarchyOnClass: aClass selector: aSelectorOrNil in: aRBEnvironment with: expandedItems
	"Open in hierarchy mode on a class."

	| s |
	aSelectorOrNil
		ifNotNil:
			[ 
			self rootItems
				anySatisfy:
					[ :each | (s := each findMethod: aSelectorOrNil in: aClass) notNil ] ].
	s
		ifNil:
			[ 
			self rootItems
				anySatisfy: [ :each | (s := each findClass: aClass) notNil ] ].
	s ifNil: [ ^ self ].
	^ self
		openOnEnvironment:
			(aRBEnvironment
				forClasses:
					{aClass} , aClass allSuperclasses , aClass allSubclasses)
		select: s
		with: expandedItems