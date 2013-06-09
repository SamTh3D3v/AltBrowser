accessing
categories
	| categories |
	categories := Set new.
	target theClass withAllSuperclasses do: [ :class | 
		class organization categories do: [ :each |
			categories add: each asLowercase ] ].
	PackageOrganizer default packages
		do: [ :package | categories add: package methodCategoryPrefix ].
	categories
		remove: ClassOrganizer nullCategory ifAbsent: [ ];
		remove: ClassOrganizer default ifAbsent: [ ].
	^ categories