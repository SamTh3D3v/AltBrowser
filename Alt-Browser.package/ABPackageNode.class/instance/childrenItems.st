private
childrenItems
	"Extract from the organisation the various classes. Use the same implementation as the Class Category, if only one category."

	| o |
	o := OrderedCollection new.
	o add: self item.
	o addAll: (ABClassCategoryNode orderClasses: self item definedClasses asOrderedCollection).
	^ o