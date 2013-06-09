private
childrenItems
	| o |
	o := OrderedCollection new.
	self item packageSet packages size = 1
		ifTrue: [ 
			| package |
			package := self item packageSet packages first.
			o add: package.
			o addAll: (ABClassCategoryNode orderClasses: package definedClasses asOrderedCollection) ]
		ifFalse: [ o addAll: self item packageSet packages ].
	^ o