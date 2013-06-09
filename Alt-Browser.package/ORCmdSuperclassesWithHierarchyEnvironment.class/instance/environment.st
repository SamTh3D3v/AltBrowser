accessing
environment
	^ (super environment forClasses: target theNonMetaClass withAllSuperclasses)
		label: 'Superclasses with ' , target theNonMetaClassName;
		yourself