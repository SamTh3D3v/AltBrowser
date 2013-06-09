as yet unclassified
childrenItems
	"Extract from the organisation the various classes."

	| c o |
	c := Smalltalk organization categoriesMatching: self item packageName , '*'.
	o := OrderedCollection new.
	o addAll: self item extensionClasses.
	c size = 1
		ifTrue: [ c do: [ :e | (Smalltalk organization classesInCategory: e) do: [ :class | o add: class ] ] ]
		ifFalse: [ o addAll: c ].
	^ o