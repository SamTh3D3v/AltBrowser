accessing
environment
	| classes |
	classes := Set new
		addAll: target theNonMetaClass withAllSuperclasses;
		addAll: target theNonMetaClass allSubclasses;
		yourself.
	^ (super environment forClasses: classes)
		label: 'Hierarchy of ' , target theNonMetaClassName