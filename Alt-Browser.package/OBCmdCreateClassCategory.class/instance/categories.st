accessing
categories
	| categories |
	categories := Set new.
	PackageOrganizer default packages
		do: [ :package | categories add: package systemCategoryPrefix ].
	target categories
		do: [ :node | categories add: node name ].
	^ categories