accessing
environment
	^ (super environment forClasses: target theNonMetaClass allSuperclasses)
		label: 'Superclasses of ' , target theNonMetaClassName;
		yourself