private
childrenItems
	| o |
	o := OrderedCollection new.
	self item packageSet packages
		do: [ :package | 
			o add: package.
			package name = self item packageName
				ifTrue: [ o addAll: (AltClassCategoryNode orderClasses: package definedClasses asOrderedCollection) ] ].
	^ o