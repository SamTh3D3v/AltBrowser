as yet unclassified
childrenItems
	"Extract from the organisation the various classes."

	| c o |
	c := Smalltalk organization categoriesMatching: self item packageName, '*'.
	o := OrderedCollection new.
	o addAll: self item extensionClasses.
	c do: [ :e | (Smalltalk organization classesInCategory: e) do: [ :class | o add: class ] ].
	^ o