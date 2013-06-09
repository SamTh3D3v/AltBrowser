private
childrenItems
	"Extract from the organisation the various classes. Use the same implementation as the Class Category, if only one category."

	| c o |
	c := self item classTags.
	o := OrderedCollection new.
	o add: self item.
	c size = 1
		ifTrue: [ o := ABClassCategoryNode orderClasses: (self item classesForClassTag: c first) asOrderedCollection ]
		ifFalse: [ o addAll: c ].
	^ o