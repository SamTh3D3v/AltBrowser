private
childrenItems
	"Extract from the organisation the various classes. Ok. Our upper level should try to built a hierarchy with the category name, if applicable (via various upTo: $-). This code is ready for that (introduce an additional hierarchy)."

	| c o |
	c := Smalltalk organization categoriesMatching: self item.
	c size > 2
		ifTrue: [ ^ c ]
		ifFalse: [ 
			o := OrderedCollection new.
			c do: [ :e | (Smalltalk organization classesInCategory: e) do: [ :class | o add: class ] ].
			^ o ]